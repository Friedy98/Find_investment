import 'package:find_invest_mobile/features/auth/data/models/reset_password_model.dart';
import 'package:find_invest_mobile/features/auth/domain/repositories/auth_repository.dart';

class RequestOtpUseCase {
  final AuthRepository repository;

  RequestOtpUseCase(this.repository);

  Future<ResetPasswordResponseModel> call(String email, String method) async {
    return await repository.requestOtp(email, method);
  }
}
