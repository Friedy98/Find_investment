import 'package:find_invest_mobile/core/services/shared_preferences_service.dart';
import 'package:find_invest_mobile/features/auth/domain/usecases/get_user_usecase.dart';
import 'package:find_invest_mobile/features/auth/domain/usecases/login_usecase.dart';
import 'package:find_invest_mobile/features/auth/domain/usecases/logout_usecase.dart';
import 'package:find_invest_mobile/features/auth/domain/usecases/register_usecase.dart';
import 'package:find_invest_mobile/features/auth/domain/usecases/request_otp_usecase.dart';
import 'package:find_invest_mobile/features/auth/domain/usecases/reset_password_usecase.dart';
import 'package:find_invest_mobile/features/auth/domain/usecases/verify_otp_usecase.dart';
import 'package:get_it/get_it.dart';
import '../core/network/network_service.dart';
import '../core/services/cache_service.dart';
import '../core/services/secure_storage_service.dart';
import '../core/services/logging_service.dart';
import '../features/auth/data/datasources/auth_local_datasource.dart';
import '../features/auth/data/datasources/auth_remote_datasource.dart';
import '../features/auth/data/repositories/auth_repository_impl.dart';
import '../features/auth/domain/repositories/auth_repository.dart';

final GetIt getIt = GetIt.instance;

Future<void> setupServiceLocator() async {
  final sharedPreferenceService = await SharedPreferenceService.init();
  // Services
  getIt.registerSingleton<CacheService>(CacheService());
  getIt.registerSingleton<SecureStorageService>(SecureStorageService());
  getIt.registerSingleton<SharedPreferenceService>(sharedPreferenceService);
  getIt.registerSingleton<LoggingService>(LoggingService());
  getIt.registerSingleton<NetworkService>(
      NetworkService(secureStorage: getIt<SecureStorageService>()));

  // Auth
  getIt.registerSingleton<AuthRemoteDataSource>(
    AuthRemoteDataSourceImpl(dio: getIt<NetworkService>().dio),
  );
  getIt.registerSingleton<AuthLocalDataSource>(
    AuthLocalDataSourceImpl(
      cacheService: getIt<CacheService>(),
      secureStorage: getIt<SecureStorageService>(),
    ),
  );
  getIt.registerSingleton<AuthRepository>(
    AuthRepositoryImpl(
      remoteDataSource: getIt<AuthRemoteDataSource>(),
      localDataSource: getIt<AuthLocalDataSource>(),
    ),
  );

  // Use Cases
  getIt.registerSingleton<RegisterUseCase>(
      RegisterUseCase(getIt<AuthRepository>()));
  getIt.registerSingleton<LoginUseCase>(LoginUseCase(getIt<AuthRepository>()));
  getIt
      .registerSingleton<LogoutUseCase>(LogoutUseCase(getIt<AuthRepository>()));
  getIt.registerSingleton<GetUserUseCase>(
      GetUserUseCase(getIt<AuthRepository>()));
  getIt.registerSingleton<RequestOtpUseCase>(
      RequestOtpUseCase(getIt<AuthRepository>()));
  getIt.registerSingleton<VerifyOtpUseCase>(
      VerifyOtpUseCase(getIt<AuthRepository>()));
  getIt.registerSingleton<ResetPasswordUseCase>(
      ResetPasswordUseCase(getIt<AuthRepository>()));

  // Initialiser le cache
  await getIt<CacheService>().init();
}
