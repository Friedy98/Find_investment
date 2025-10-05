import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:find_invest_mobile/core/services/shared_preferences_service.dart';
import 'package:find_invest_mobile/core/utils/connectivity_handler.dart';
import 'package:find_invest_mobile/features/auth/domain/usecases/delete_avatar_usecase.dart';
import 'package:find_invest_mobile/features/auth/domain/usecases/enable_2fa_usecase.dart';
import 'package:find_invest_mobile/features/auth/domain/usecases/get_user_usecase.dart';
import 'package:find_invest_mobile/features/auth/domain/usecases/login_usecase.dart';
import 'package:find_invest_mobile/features/auth/domain/usecases/logout_usecase.dart';
import 'package:find_invest_mobile/features/auth/domain/usecases/register_usecase.dart';
import 'package:find_invest_mobile/features/auth/domain/usecases/request_otp_usecase.dart';
import 'package:find_invest_mobile/features/auth/domain/usecases/reset_password_usecase.dart';
import 'package:find_invest_mobile/features/auth/domain/usecases/send_phone_verification_usecase.dart';
import 'package:find_invest_mobile/features/auth/domain/usecases/update_avatar_usecase.dart';
import 'package:find_invest_mobile/features/auth/domain/usecases/update_investor_profile_usecase.dart';
import 'package:find_invest_mobile/features/auth/domain/usecases/update_password_usecase.dart';
import 'package:find_invest_mobile/features/auth/domain/usecases/update_preferences_usecase.dart';
import 'package:find_invest_mobile/features/auth/domain/usecases/update_privacy_usecase.dart';
import 'package:find_invest_mobile/features/auth/domain/usecases/update_profile_usecase.dart';
import 'package:find_invest_mobile/features/auth/domain/usecases/update_project_owner_profile_usecase.dart';
import 'package:find_invest_mobile/features/auth/domain/usecases/update_security_usecase.dart';
import 'package:find_invest_mobile/features/auth/domain/usecases/update_social_links_usecase.dart';
import 'package:find_invest_mobile/features/auth/domain/usecases/verify_otp_usecase.dart';
import 'package:find_invest_mobile/features/auth/domain/usecases/verify_phone_usecase.dart';
import 'package:find_invest_mobile/features/investor/investor_usecases/investment_usecase.dart';
import 'package:find_invest_mobile/features/investor/screens/wallet/data/repository/investment_repository_impl.dart';
import 'package:find_invest_mobile/features/investor/screens/wallet/data/repository/wallet_repository.dart';
import 'package:find_invest_mobile/features/kyc/data/datasources/kyc_remote_data_source.dart';
import 'package:find_invest_mobile/features/kyc/data/repositories/kyc_repository_impl.dart';
import 'package:find_invest_mobile/features/kyc/domain/repositories/kyc_repository.dart';
import 'package:find_invest_mobile/features/kyc/domain/usecases/delete_document_use_case.dart';
import 'package:find_invest_mobile/features/kyc/domain/usecases/get_kyc_status_use_case.dart';
import 'package:find_invest_mobile/features/kyc/domain/usecases/get_kyc_use_case.dart';
import 'package:find_invest_mobile/features/kyc/domain/usecases/get_required_documents_use_case.dart';
import 'package:find_invest_mobile/features/kyc/domain/usecases/submit_kyc_use_case.dart';
import 'package:find_invest_mobile/features/kyc/domain/usecases/upload_document_use_case.dart';
import 'package:find_invest_mobile/features/project-milestone/data/datasources/project_milestone_remote_datasource.dart';
import 'package:find_invest_mobile/features/project-milestone/data/repositories/project_milestone_repository_impl.dart';
import 'package:find_invest_mobile/features/project-milestone/domain/repositories/project_milestone_repository.dart';
// import 'package:find_invest_mobile/features/user/domain/repositories/user_repository.dart';
import 'package:find_invest_mobile/features/project/data/datasources/project_remote_datasource.dart';
import 'package:find_invest_mobile/features/project/data/repositories/project_repository_impl.dart';
import 'package:find_invest_mobile/features/project/domain/repositories/project_repository.dart';
import 'package:find_invest_mobile/features/project/domain/usecases/add_team_member_use_case.dart';
import 'package:find_invest_mobile/features/project/domain/usecases/archive_project_use_case.dart';
import 'package:find_invest_mobile/features/project/domain/usecases/create_project_use_case.dart';
import 'package:find_invest_mobile/features/project/domain/usecases/delete_project_use_case.dart';
import 'package:find_invest_mobile/features/project/domain/usecases/duplicate_project_use_case.dart';
import 'package:find_invest_mobile/features/project/domain/usecases/get_featured_projects_use_case.dart';
import 'package:find_invest_mobile/features/project/domain/usecases/get_my_projects_use_case.dart';
import 'package:find_invest_mobile/features/project/domain/usecases/get_project_analytics_use_case.dart';
import 'package:find_invest_mobile/features/project/domain/usecases/get_project_investors_use_case.dart';
import 'package:find_invest_mobile/features/project/domain/usecases/get_project_stats_use_case.dart';
import 'package:find_invest_mobile/features/project/domain/usecases/get_project_use_case.dart';
import 'package:find_invest_mobile/features/project/domain/usecases/get_projects_use_case.dart';
import 'package:find_invest_mobile/features/project/domain/usecases/remove_team_member_use_case.dart';
import 'package:find_invest_mobile/features/project/domain/usecases/search_projects_use_case.dart';
import 'package:find_invest_mobile/features/project/domain/usecases/set_cover_image_use_case.dart';
import 'package:find_invest_mobile/features/project/domain/usecases/set_logo_use_case.dart';
import 'package:find_invest_mobile/features/project/domain/usecases/submit_for_review_use_case.dart';
import 'package:find_invest_mobile/features/project/domain/usecases/toggle_bookmark_use_case.dart';
import 'package:find_invest_mobile/features/project/domain/usecases/toggle_follow_use_case.dart';
import 'package:find_invest_mobile/features/project/domain/usecases/toggle_like_use_case.dart';
import 'package:find_invest_mobile/features/project/domain/usecases/update_financial_projections_use_case.dart';
import 'package:find_invest_mobile/features/project/domain/usecases/update_impact_data_use_case.dart';
import 'package:find_invest_mobile/features/project/domain/usecases/update_project_settings_use_case.dart';
import 'package:find_invest_mobile/features/project/domain/usecases/update_project_use_case.dart';
import 'package:find_invest_mobile/features/project/domain/usecases/update_risks_use_case.dart';
import 'package:find_invest_mobile/features/project/domain/usecases/update_seo_use_case.dart';
import 'package:find_invest_mobile/features/project/domain/usecases/update_team_member_use_case.dart';
import 'package:find_invest_mobile/features/project/domain/usecases/upload_images_use_case.dart';
import 'package:find_invest_mobile/features/project/domain/usecases/upload_videos_use_case.dart';
// import 'package:find_invest_mobile/features/project/domain/usecases/add_team_member_usecase.dart';
// import 'package:find_invest_mobile/features/project/domain/usecases/create_project_usecase.dart';
// import 'package:find_invest_mobile/features/project/domain/usecases/delete_project_usecase.dart';
// import 'package:find_invest_mobile/features/project/domain/usecases/get_featured_projects_usecase.dart';
// import 'package:find_invest_mobile/features/project/domain/usecases/get_project_by_id_usecase.dart';
// import 'package:find_invest_mobile/features/project/domain/usecases/get_project_stats_usecase.dart';
// import 'package:find_invest_mobile/features/project/domain/usecases/get_projects_usecase.dart';
// import 'package:find_invest_mobile/features/project/domain/usecases/remove_team_member_usecase.dart';
// import 'package:find_invest_mobile/features/project/domain/usecases/submit_project_usecase.dart';
// import 'package:find_invest_mobile/features/project/domain/usecases/update_project_usecase.dart';
import 'package:find_invest_mobile/features/project_category/data/datasources/project_category_remote_datasource.dart';
import 'package:find_invest_mobile/features/project_category/data/datasources/project_category_remote_datasource_impl.dart';
import 'package:find_invest_mobile/features/project_category/data/repositories/project_category_repository_impl.dart';
import 'package:find_invest_mobile/features/project_category/domain/repositories/project_category_repository.dart';
import 'package:find_invest_mobile/features/project_category/domain/usecases/get_categories_usecase.dart';
import 'package:find_invest_mobile/features/project_category/domain/usecases/get_category_by_id_usecase.dart';
import 'package:find_invest_mobile/features/project_comments/data/datasources/project_comment_remote_data_source.dart';
import 'package:find_invest_mobile/features/project_comments/data/repositories/project_comment_repository_impl.dart';
import 'package:find_invest_mobile/features/project_comments/domain/repositories/project_comment_repository.dart';
import 'package:find_invest_mobile/features/project_comments/domain/usecases/create_comment_use_case.dart';
import 'package:find_invest_mobile/features/project_comments/domain/usecases/delete_comment_use_case.dart';
import 'package:find_invest_mobile/features/project_comments/domain/usecases/flag_comment_use_case.dart';
import 'package:find_invest_mobile/features/project_comments/domain/usecases/get_project_comments_use_case.dart';
import 'package:find_invest_mobile/features/project_comments/domain/usecases/update_comment_use_case.dart';
import 'package:find_invest_mobile/features/project_doc/data/datasources/project_document_remote_datasource.dart';
import 'package:find_invest_mobile/features/project_doc/data/repositories/project_document_repository_impl.dart';
import 'package:find_invest_mobile/features/project_doc/domain/repositories/project_document_repository.dart';
import 'package:find_invest_mobile/features/project_invitations/data/datasources/project_invitation_remote_data_source.dart';
import 'package:find_invest_mobile/features/project_invitations/data/repositories/project_invitation_repository_impl.dart';
import 'package:find_invest_mobile/features/project_invitations/domain/repositories/project_invitation_repository.dart';
import 'package:find_invest_mobile/features/project_repport/data/datasources/project_report_remote_datasource.dart';
import 'package:find_invest_mobile/features/project_repport/data/repositories/project_report_repository_impl.dart';
import 'package:find_invest_mobile/features/project_repport/domain/repositories/project_report_repository.dart';
import 'package:find_invest_mobile/features/project_update/data/datasources/project_update_remote_datasource.dart';
import 'package:find_invest_mobile/features/project_update/data/repositories/project_update_repository_impl.dart';
import 'package:find_invest_mobile/features/project_update/domain/repositories/project_update_repository.dart';
import 'package:find_invest_mobile/features/questionnaire/data/datasources/questionnaire_remote_datasource.dart';
import 'package:find_invest_mobile/features/questionnaire/data/repositories/questionnaire_repository_impl.dart';
import 'package:find_invest_mobile/features/questionnaire/domain/repositories/questionnaire_repository.dart';
import 'package:find_invest_mobile/features/questionnaire/domain/usecases/check_questionnaire_requirement.dart';
import 'package:find_invest_mobile/features/questionnaire/domain/usecases/get_active_questionnaire_for_my_role.dart';
import 'package:find_invest_mobile/features/questionnaire/domain/usecases/get_my_submission.dart';
import 'package:find_invest_mobile/features/questionnaire/domain/usecases/save_answer.dart';
import 'package:find_invest_mobile/features/questionnaire/domain/usecases/start_questionnaire.dart';
import 'package:find_invest_mobile/features/questionnaire/domain/usecases/submit_questionnaire.dart';

import 'package:find_invest_mobile/features/project_doc/domain/usecases/create_document_use_case.dart';
import 'package:find_invest_mobile/features/project_doc/domain/usecases/create_version_use_case.dart';
import 'package:find_invest_mobile/features/project_doc/domain/usecases/delete_document_use_case.dart'
    as usecase;
import 'package:find_invest_mobile/features/project_doc/domain/usecases/get_document_by_id_use_case.dart';
import 'package:find_invest_mobile/features/project_doc/domain/usecases/get_documents_by_type_use_case.dart';
import 'package:find_invest_mobile/features/project_doc/domain/usecases/get_version_history_use_case.dart';
import 'package:find_invest_mobile/features/project_doc/domain/usecases/increment_download_use_case.dart';
import 'package:find_invest_mobile/features/project_doc/domain/usecases/list_documents_use_case.dart';
import 'package:find_invest_mobile/features/project_doc/domain/usecases/search_documents_use_case.dart';
import 'package:find_invest_mobile/features/project_doc/domain/usecases/update_document_use_case.dart';

import 'package:find_invest_mobile/features/project_invitations/domain/usecases/accept_invitation_use_case.dart';
import 'package:find_invest_mobile/features/project_invitations/domain/usecases/create_invitation_use_case.dart';
import 'package:find_invest_mobile/features/project_invitations/domain/usecases/delete_invitation_use_case.dart';
import 'package:find_invest_mobile/features/project_invitations/domain/usecases/expire_invitation_use_case.dart';
import 'package:find_invest_mobile/features/project_invitations/domain/usecases/get_invitation_use_case.dart';
import 'package:find_invest_mobile/features/project_invitations/domain/usecases/get_role_stats_use_case.dart';
import 'package:find_invest_mobile/features/project_invitations/domain/usecases/get_status_stats_use_case.dart';
import 'package:find_invest_mobile/features/project_invitations/domain/usecases/list_invitations_use_case.dart';
import 'package:find_invest_mobile/features/project_invitations/domain/usecases/list_pending_invitations_use_case.dart';
import 'package:find_invest_mobile/features/project_invitations/domain/usecases/reject_invitation_use_case.dart';

import 'package:find_invest_mobile/features/project_repport/domain/usecases/add_attachment_use_case.dart';
import 'package:find_invest_mobile/features/project_repport/domain/usecases/archive_report_use_case.dart';
import 'package:find_invest_mobile/features/project_repport/domain/usecases/create_report_use_case.dart';
import 'package:find_invest_mobile/features/project_repport/domain/usecases/delete_report_use_case.dart';
import 'package:find_invest_mobile/features/project_repport/domain/usecases/get_metrics_summary_use_case.dart';
import 'package:find_invest_mobile/features/project_repport/domain/usecases/get_report_use_case.dart';
import 'package:find_invest_mobile/features/project_repport/domain/usecases/get_reports_by_type_use_case.dart';
import 'package:find_invest_mobile/features/project_repport/domain/usecases/list_published_reports_use_case.dart';
import 'package:find_invest_mobile/features/project_repport/domain/usecases/list_reports_use_case.dart';
import 'package:find_invest_mobile/features/project_repport/domain/usecases/publish_report_use_case.dart';
import 'package:find_invest_mobile/features/project_repport/domain/usecases/remove_attachment_use_case.dart';
import 'package:find_invest_mobile/features/project_repport/domain/usecases/search_reports_use_case.dart';
import 'package:find_invest_mobile/features/project_repport/domain/usecases/update_report_use_case.dart';

import 'package:find_invest_mobile/features/project-milestone/domain/usecases/add_deliverable_use_case.dart';
import 'package:find_invest_mobile/features/project-milestone/domain/usecases/cancel_milestone_use_case.dart';
import 'package:find_invest_mobile/features/project-milestone/domain/usecases/create_milestone_use_case.dart';
import 'package:find_invest_mobile/features/project-milestone/domain/usecases/delete_milestone_use_case.dart';
import 'package:find_invest_mobile/features/project-milestone/domain/usecases/get_milestone_use_case.dart';
import 'package:find_invest_mobile/features/project-milestone/domain/usecases/get_progress_stats_use_case.dart';
import 'package:find_invest_mobile/features/project-milestone/domain/usecases/get_status_stats_use_case.dart'
    as getstatusstats;
import 'package:find_invest_mobile/features/project-milestone/domain/usecases/list_milestones_use_case.dart';
import 'package:find_invest_mobile/features/project-milestone/domain/usecases/remove_deliverable_use_case.dart';
import 'package:find_invest_mobile/features/project-milestone/domain/usecases/update_milestone_use_case.dart';
import 'package:find_invest_mobile/features/project-milestone/domain/usecases/update_progress_use_case.dart';
import 'package:find_invest_mobile/features/project-milestone/domain/usecases/update_status_use_case.dart';

import 'package:find_invest_mobile/features/project_update/domain/usecases/add_attachment_use_case.dart'
    as attachement;
import 'package:find_invest_mobile/features/project_update/domain/usecases/create_update_use_case.dart';
import 'package:find_invest_mobile/features/project_update/domain/usecases/delete_update_use_case.dart';
import 'package:find_invest_mobile/features/project_update/domain/usecases/get_latest_updates_use_case.dart';
import 'package:find_invest_mobile/features/project_update/domain/usecases/get_update_use_case.dart';
import 'package:find_invest_mobile/features/project_update/domain/usecases/get_updates_by_type_use_case.dart';
import 'package:find_invest_mobile/features/project_update/domain/usecases/list_public_updates_use_case.dart';
import 'package:find_invest_mobile/features/project_update/domain/usecases/list_updates_use_case.dart';
import 'package:find_invest_mobile/features/project_update/domain/usecases/remove_attachment_use_case.dart'
    as removeattachement;
import 'package:find_invest_mobile/features/project_update/domain/usecases/search_updates_use_case.dart';
import 'package:find_invest_mobile/features/project_update/domain/usecases/toggle_visibility_use_case.dart';
import 'package:find_invest_mobile/features/project_update/domain/usecases/update_update_use_case.dart';
// import 'package:find_invest_mobile/features/project_doc/data/datasources/project_document_remote_datasource.dart';
// import 'package:find_invest_mobile/features/project_doc/data/repositories/project_document_repository_impl.dart';
// import 'package:find_invest_mobile/features/project_doc/domain/repositories/project_document_repository.dart';
// import 'package:find_invest_mobile/features/project_doc/domain/usecases/approve_document_usecase.dart';
// import 'package:find_invest_mobile/features/project_doc/domain/usecases/delete_document_usecase.dart';
// import 'package:find_invest_mobile/features/project_doc/domain/usecases/download_document_usecase.dart';
// import 'package:find_invest_mobile/features/project_doc/domain/usecases/get_document_by_id_usecase.dart';
// import 'package:find_invest_mobile/features/project_doc/domain/usecases/get_project_documents_usecase.dart';
// import 'package:find_invest_mobile/features/project_doc/domain/usecases/update_document_usecase.dart';
// import 'package:find_invest_mobile/features/project_doc/domain/usecases/upload_document_usecase.dart';
import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';
import '../core/network/network_service.dart';
import '../core/services/cache_service.dart';
import '../core/services/secure_storage_service.dart';
import '../core/services/logging_service.dart';
import '../features/auth/data/datasources/auth_local_datasource.dart';
import '../features/auth/data/datasources/auth_remote_datasource.dart';
import '../features/auth/data/repositories/auth_repository_impl.dart';
import '../features/auth/domain/repositories/auth_repository.dart';
import '../features/investor/screens/wallet/data/datasource/investment_datasource.dart';

final GetIt getIt = GetIt.instance;

Future<void> setupServiceLocator(
    {required GlobalKey<NavigatorState> navigatorKey}) async {
  final sharedPreferenceService = await SharedPreferenceService.init();

  // Services
  getIt.registerSingleton<CacheService>(CacheService());
  getIt.registerSingleton<SecureStorageService>(SecureStorageService());
  getIt.registerSingleton<SharedPreferenceService>(sharedPreferenceService);
  getIt.registerSingleton<LoggingService>(LoggingService());
  getIt.registerSingleton<Connectivity>(Connectivity());
  getIt.registerSingleton<ConnectivityHandler>(
      ConnectivityHandler(getIt<Connectivity>(), navigatorKey));
  getIt.registerSingleton<NetworkService>(
    NetworkService(
      secureStorage: getIt<SecureStorageService>(),
      connectivityHandler: getIt<ConnectivityHandler>(),
      navigatorKey: navigatorKey, // Pass navigatorKey
    ),
  );

  // Auth
  getIt.registerSingleton<AuthRemoteDataSource>(
    AuthRemoteDataSourceImpl(networkService: getIt<NetworkService>()),
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

  // Project
  getIt.registerSingleton<ProjectRemoteDataSource>(
    ProjectRemoteDataSourceImpl(networkService: getIt<NetworkService>()),
  );
  getIt.registerSingleton<ProjectRepository>(
    ProjectRepositoryImpl(remoteDataSource: getIt<ProjectRemoteDataSource>()),
  );

  //Investor
  getIt.registerSingleton<InvestmentRemoteDataSource>(
    InvestmentRemoteDataSourceImpl(networkService: getIt<NetworkService>()),
  );
  getIt.registerSingleton<InvestmentRepository>(
    InvestmentRepositoryImpl(investmentRemoteDataSource: getIt<InvestmentRemoteDataSource>()),
  );

  // Questionnaire
  getIt.registerSingleton<QuestionnaireRemoteDataSource>(
    QuestionnaireRemoteDataSourceImpl(networkService: getIt<NetworkService>()),
  );
  getIt.registerSingleton<QuestionnaireRepository>(
    QuestionnaireRepositoryImpl(
        remoteDataSource: getIt<QuestionnaireRemoteDataSource>()),
  );

  // kyc
  getIt.registerSingleton<KycRemoteDataSource>(
    KycRemoteDataSourceImpl(networkService: getIt<NetworkService>()),
  );
  getIt.registerSingleton<KycRepository>(
    KycRepositoryImpl(remoteDataSource: getIt<KycRemoteDataSource>()),
  );

  // DataSource project comments
  getIt.registerSingleton<ProjectCommentRemoteDataSource>(
    ProjectCommentRemoteDataSourceImpl(networkService: getIt<NetworkService>()),
  );

  // Repository project comments
  getIt.registerSingleton<ProjectCommentRepository>(
    ProjectCommentRepositoryImpl(
      remoteDataSource: getIt<ProjectCommentRemoteDataSource>(),
    ),
  );

  // Project repport
  getIt.registerSingleton<ProjectReportRemoteDataSource>(
    ProjectReportRemoteDataSourceImpl(networkService: getIt<NetworkService>()),
  );
  getIt.registerSingleton<ProjectReportRepository>(
    ProjectReportRepositoryImpl(
        remoteDataSource: getIt<ProjectReportRemoteDataSource>()),
  );

  // Remote data source
  getIt.registerSingleton<ProjectDocumentRemoteDataSource>(
    ProjectDocumentRemoteDataSourceImpl(
        networkService: getIt<NetworkService>()),
  );

// Repository
  getIt.registerSingleton<ProjectDocumentRepository>(
    ProjectDocumentRepositoryImpl(
      remoteDataSource: getIt<ProjectDocumentRemoteDataSource>(),
    ),
  );

  // Remote data source
  getIt.registerSingleton<ProjectInvitationRemoteDataSource>(
    ProjectInvitationRemoteDataSourceImpl(
        networkService: getIt<NetworkService>()),
  );

  // Repository
  getIt.registerSingleton<ProjectInvitationRepository>(
    ProjectInvitationRepositoryImpl(
      remoteDataSource: getIt<ProjectInvitationRemoteDataSource>(),
    ),
  );

  // Remote data source
  getIt.registerSingleton<ProjectUpdateRemoteDataSource>(
    ProjectUpdateRemoteDataSourceImpl(networkService: getIt<NetworkService>()),
  );

// Repository
  getIt.registerSingleton<ProjectUpdateRepository>(
    ProjectUpdateRepositoryImpl(
      remoteDataSource: getIt<ProjectUpdateRemoteDataSource>(),
    ),
  );

  // 🔹 Remote data source
  getIt.registerSingleton<ProjectMilestoneRemoteDataSource>(
    ProjectMilestoneRemoteDataSourceImpl(
        networkService: getIt<NetworkService>()),
  );

// 🔹 Repository
  getIt.registerSingleton<ProjectMilestoneRepository>(
    ProjectMilestoneRepositoryImpl(
      remoteDataSource: getIt<ProjectMilestoneRemoteDataSource>(),
    ),
  );

  // Project-document
  // getIt.registerSingleton<ProjectDocumentRemoteDataSource>(
  //   ProjectDocumentRemoteDataSourceImpl(
  //       networkService: getIt<NetworkService>(),
  //       secureStorage: getIt<SecureStorageService>()),
  // );
  // getIt.registerSingleton<ProjectDocumentRepository>(
  //   ProjectDocumentRepositoryImpl(
  //       remoteDataSource: getIt<ProjectDocumentRemoteDataSource>()),
  // );

  // Project-category
  getIt.registerSingleton<ProjectCategoryRemoteDataSource>(
    ProjectCategoryRemoteDataSourceImpl(
        networkService: getIt<NetworkService>()),
  );
  getIt.registerSingleton<ProjectCategoryRepository>(
    ProjectCategoryRepositoryImpl(
        remoteDataSource: getIt<ProjectCategoryRemoteDataSource>()),
  );

  // Use Cases auth
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

  // project report Use case
  getIt.registerSingleton<CreateReportUseCase>(
    CreateReportUseCase(repository: getIt<ProjectReportRepository>()),
  );
  getIt.registerSingleton<UpdateReportUseCase>(
    UpdateReportUseCase(repository: getIt<ProjectReportRepository>()),
  );
  getIt.registerSingleton<DeleteReportUseCase>(
    DeleteReportUseCase(repository: getIt<ProjectReportRepository>()),
  );
  getIt.registerSingleton<PublishReportUseCase>(
    PublishReportUseCase(repository: getIt<ProjectReportRepository>()),
  );
  getIt.registerSingleton<ArchiveReportUseCase>(
    ArchiveReportUseCase(repository: getIt<ProjectReportRepository>()),
  );
  getIt.registerSingleton<AddAttachmentUseCase>(
    AddAttachmentUseCase(repository: getIt<ProjectReportRepository>()),
  );
  getIt.registerSingleton<RemoveAttachmentUseCase>(
    RemoveAttachmentUseCase(repository: getIt<ProjectReportRepository>()),
  );
  getIt.registerSingleton<SearchReportsUseCase>(
    SearchReportsUseCase(repository: getIt<ProjectReportRepository>()),
  );
  getIt.registerSingleton<GetReportsByTypeUseCase>(
    GetReportsByTypeUseCase(repository: getIt<ProjectReportRepository>()),
  );
  getIt.registerSingleton<GetReportUseCase>(
    GetReportUseCase(repository: getIt<ProjectReportRepository>()),
  );
  getIt.registerSingleton<ListReportsUseCase>(
    ListReportsUseCase(repository: getIt<ProjectReportRepository>()),
  );
  getIt.registerSingleton<ListPublishedReportsUseCase>(
    ListPublishedReportsUseCase(repository: getIt<ProjectReportRepository>()),
  );
  getIt.registerSingleton<GetMetricsSummaryUseCase>(
    GetMetricsSummaryUseCase(repository: getIt<ProjectReportRepository>()),
  );

  // Use Cases
  getIt.registerSingleton<CreateInvitationUseCase>(
    CreateInvitationUseCase(repository: getIt<ProjectInvitationRepository>()),
  );

  getIt.registerSingleton<ListInvitationsUseCase>(
    ListInvitationsUseCase(repository: getIt<ProjectInvitationRepository>()),
  );

  getIt.registerSingleton<ListPendingInvitationsUseCase>(
    ListPendingInvitationsUseCase(
        repository: getIt<ProjectInvitationRepository>()),
  );

  getIt.registerSingleton<GetInvitationUseCase>(
    GetInvitationUseCase(repository: getIt<ProjectInvitationRepository>()),
  );

  getIt.registerSingleton<AcceptInvitationUseCase>(
    AcceptInvitationUseCase(repository: getIt<ProjectInvitationRepository>()),
  );

  getIt.registerSingleton<RejectInvitationUseCase>(
    RejectInvitationUseCase(repository: getIt<ProjectInvitationRepository>()),
  );

  getIt.registerSingleton<ExpireInvitationUseCase>(
    ExpireInvitationUseCase(repository: getIt<ProjectInvitationRepository>()),
  );

  getIt.registerSingleton<DeleteInvitationUseCase>(
    DeleteInvitationUseCase(repository: getIt<ProjectInvitationRepository>()),
  );

  getIt.registerSingleton<GetStatusStatsUseCase>(
    GetStatusStatsUseCase(repository: getIt<ProjectInvitationRepository>()),
  );

  getIt.registerSingleton<GetRoleStatsUseCase>(
    GetRoleStatsUseCase(repository: getIt<ProjectInvitationRepository>()),
  );

  // Use Cases Kyc
  getIt.registerSingleton<GetKYCUseCase>(
      GetKYCUseCase(repository: getIt<KycRepository>()));
  getIt.registerSingleton<SubmitKYCUseCase>(
      SubmitKYCUseCase(repository: getIt<KycRepository>()));
  getIt.registerSingleton<DeleteDocumentUseCase>(
      DeleteDocumentUseCase(repository: getIt<KycRepository>()));
  getIt.registerSingleton<GetRequiredDocumentsUseCase>(
      GetRequiredDocumentsUseCase(repository: getIt<KycRepository>()));
  getIt.registerSingleton<GetKYCStatusUseCase>(
      GetKYCStatusUseCase(repository: getIt<KycRepository>()));
  getIt.registerSingleton<UploadDocumentUseCase>(
      UploadDocumentUseCase(repository: getIt<KycRepository>()));

  // Use Cases
  getIt.registerSingleton<ListUpdatesUseCase>(
    ListUpdatesUseCase(repository: getIt<ProjectUpdateRepository>()),
  );

  getIt.registerSingleton<ListPublicUpdatesUseCase>(
    ListPublicUpdatesUseCase(repository: getIt<ProjectUpdateRepository>()),
  );

  getIt.registerSingleton<GetUpdatesByTypeUseCase>(
    GetUpdatesByTypeUseCase(repository: getIt<ProjectUpdateRepository>()),
  );

  getIt.registerSingleton<GetUpdateUseCase>(
    GetUpdateUseCase(repository: getIt<ProjectUpdateRepository>()),
  );

  getIt.registerSingleton<CreateUpdateUseCase>(
    CreateUpdateUseCase(repository: getIt<ProjectUpdateRepository>()),
  );

  getIt.registerSingleton<UpdateUpdateUseCase>(
    UpdateUpdateUseCase(repository: getIt<ProjectUpdateRepository>()),
  );

  getIt.registerSingleton<ToggleVisibilityUseCase>(
    ToggleVisibilityUseCase(repository: getIt<ProjectUpdateRepository>()),
  );

  getIt.registerSingleton<attachement.AddAttachmentUseCase>(
    attachement.AddAttachmentUseCase(
        repository: getIt<ProjectUpdateRepository>()),
  );

  getIt.registerSingleton<removeattachement.RemoveAttachmentUseCase>(
    removeattachement.RemoveAttachmentUseCase(
        repository: getIt<ProjectUpdateRepository>()),
  );

  getIt.registerSingleton<SearchUpdatesUseCase>(
    SearchUpdatesUseCase(repository: getIt<ProjectUpdateRepository>()),
  );

  getIt.registerSingleton<GetLatestUpdatesUseCase>(
    GetLatestUpdatesUseCase(repository: getIt<ProjectUpdateRepository>()),
  );

  getIt.registerSingleton<DeleteUpdateUseCase>(
    DeleteUpdateUseCase(repository: getIt<ProjectUpdateRepository>()),
  );

  // Use Cases
  getIt.registerSingleton<ListDocumentsUseCase>(
    ListDocumentsUseCase(repository: getIt<ProjectDocumentRepository>()),
  );
  getIt.registerSingleton<GetDocumentByIdUseCase>(
    GetDocumentByIdUseCase(repository: getIt<ProjectDocumentRepository>()),
  );
  getIt.registerSingleton<CreateDocumentUseCase>(
    CreateDocumentUseCase(repository: getIt<ProjectDocumentRepository>()),
  );
  getIt.registerSingleton<UpdateDocumentUseCase>(
    UpdateDocumentUseCase(repository: getIt<ProjectDocumentRepository>()),
  );
  getIt.registerSingleton<usecase.DeleteDocumentUseCase>(
    usecase.DeleteDocumentUseCase(
        repository: getIt<ProjectDocumentRepository>()),
  );
  getIt.registerSingleton<IncrementDownloadUseCase>(
    IncrementDownloadUseCase(repository: getIt<ProjectDocumentRepository>()),
  );
  getIt.registerSingleton<GetDocumentsByTypeUseCase>(
    GetDocumentsByTypeUseCase(repository: getIt<ProjectDocumentRepository>()),
  );
  getIt.registerSingleton<SearchDocumentsUseCase>(
    SearchDocumentsUseCase(repository: getIt<ProjectDocumentRepository>()),
  );
  getIt.registerSingleton<CreateVersionUseCase>(
    CreateVersionUseCase(repository: getIt<ProjectDocumentRepository>()),
  );
  getIt.registerSingleton<GetVersionHistoryUseCase>(
    GetVersionHistoryUseCase(repository: getIt<ProjectDocumentRepository>()),
  );

  // Use Cases project comments
  getIt.registerSingleton<GetProjectCommentsUseCase>(
    GetProjectCommentsUseCase(repository: getIt<ProjectCommentRepository>()),
  );
  getIt.registerSingleton<CreateCommentUseCase>(
    CreateCommentUseCase(repository: getIt<ProjectCommentRepository>()),
  );
  getIt.registerSingleton<UpdateCommentUseCase>(
    UpdateCommentUseCase(repository: getIt<ProjectCommentRepository>()),
  );
  getIt.registerSingleton<DeleteCommentUseCase>(
    DeleteCommentUseCase(repository: getIt<ProjectCommentRepository>()),
  );
  getIt.registerSingleton<FlagCommentUseCase>(
    FlagCommentUseCase(repository: getIt<ProjectCommentRepository>()),
  );

  // 🔹 Use Cases
  getIt.registerSingleton<ListMilestonesUseCase>(
    ListMilestonesUseCase(repository: getIt<ProjectMilestoneRepository>()),
  );

  getIt.registerSingleton<GetMilestoneUseCase>(
    GetMilestoneUseCase(repository: getIt<ProjectMilestoneRepository>()),
  );

  getIt.registerSingleton<CreateMilestoneUseCase>(
    CreateMilestoneUseCase(repository: getIt<ProjectMilestoneRepository>()),
  );

  getIt.registerSingleton<UpdateMilestoneUseCase>(
    UpdateMilestoneUseCase(repository: getIt<ProjectMilestoneRepository>()),
  );

  getIt.registerSingleton<DeleteMilestoneUseCase>(
    DeleteMilestoneUseCase(repository: getIt<ProjectMilestoneRepository>()),
  );

  getIt.registerSingleton<UpdateProgressUseCase>(
    UpdateProgressUseCase(repository: getIt<ProjectMilestoneRepository>()),
  );

  getIt.registerSingleton<CancelMilestoneUseCase>(
    CancelMilestoneUseCase(repository: getIt<ProjectMilestoneRepository>()),
  );

  getIt.registerSingleton<UpdateStatusUseCase>(
    UpdateStatusUseCase(repository: getIt<ProjectMilestoneRepository>()),
  );

  getIt.registerSingleton<AddDeliverableUseCase>(
    AddDeliverableUseCase(repository: getIt<ProjectMilestoneRepository>()),
  );

  getIt.registerSingleton<RemoveDeliverableUseCase>(
    RemoveDeliverableUseCase(repository: getIt<ProjectMilestoneRepository>()),
  );

  getIt.registerSingleton<GetProgressStatsUseCase>(
    GetProgressStatsUseCase(repository: getIt<ProjectMilestoneRepository>()),
  );

  getIt.registerSingleton<getstatusstats.GetStatusStatsUseCase>(
    getstatusstats.GetStatusStatsUseCase(
        repository: getIt<ProjectMilestoneRepository>()),
  );

  // Use Cases user
  getIt.registerSingleton<DeleteAvatarUseCase>(
      DeleteAvatarUseCase(getIt<AuthRepository>()));
  getIt.registerSingleton<Enable2FAUseCase>(
      Enable2FAUseCase(getIt<AuthRepository>()));
  getIt.registerSingleton<SendPhoneVerificationUseCase>(
      SendPhoneVerificationUseCase(getIt<AuthRepository>()));
  getIt.registerSingleton<UpdateAvatarUseCase>(
      UpdateAvatarUseCase(getIt<AuthRepository>()));
  getIt.registerSingleton<UpdateInvestorProfileUseCase>(
      UpdateInvestorProfileUseCase(getIt<AuthRepository>()));
  getIt.registerSingleton<UpdatePasswordUseCase>(
      UpdatePasswordUseCase(getIt<AuthRepository>()));
  getIt.registerSingleton<UpdatePreferencesUseCase>(
      UpdatePreferencesUseCase(getIt<AuthRepository>()));
  getIt.registerSingleton<UpdatePrivacyUseCase>(
      UpdatePrivacyUseCase(getIt<AuthRepository>()));
  getIt.registerSingleton<UpdateProfileUseCase>(
      UpdateProfileUseCase(getIt<AuthRepository>()));
  getIt.registerSingleton<UpdateProjectOwnerProfileUseCase>(
      UpdateProjectOwnerProfileUseCase(getIt<AuthRepository>()));
  getIt.registerSingleton<UpdateSecurityUseCase>(
      UpdateSecurityUseCase(getIt<AuthRepository>()));
  getIt.registerSingleton<UpdateSocialLinksUseCase>(
      UpdateSocialLinksUseCase(getIt<AuthRepository>()));
  getIt.registerSingleton<VerifyPhoneUseCase>(
      VerifyPhoneUseCase(getIt<AuthRepository>()));

  ///Investor
  getIt.registerSingleton<GetInvestmentUsecase>(
      GetInvestmentUsecase(repository: getIt<InvestmentRepository>()));
  getIt.registerSingleton<CreateInvestmentUseCase>(
      CreateInvestmentUseCase(repository: getIt<InvestmentRepository>()));


  // Use Cases projects
  getIt.registerSingleton<GetProjectsUseCase>(
      GetProjectsUseCase(repository: getIt<ProjectRepository>()));
  getIt.registerSingleton<GetProjectStatsUseCase>(
      GetProjectStatsUseCase(repository: getIt<ProjectRepository>()));
  getIt.registerSingleton<GetFeaturedProjectsUseCase>(
      GetFeaturedProjectsUseCase(repository: getIt<ProjectRepository>()));
  getIt.registerSingleton<SearchProjectsUseCase>(
      SearchProjectsUseCase(repository: getIt<ProjectRepository>()));
  getIt.registerSingleton<GetProjectUseCase>(
      GetProjectUseCase(repository: getIt<ProjectRepository>()));
  getIt.registerSingleton<GetMyProjectsUseCase>(
      GetMyProjectsUseCase(repository: getIt<ProjectRepository>()));
  getIt.registerSingleton<CreateProjectUseCase>(
      CreateProjectUseCase(repository: getIt<ProjectRepository>()));
  getIt.registerSingleton<UpdateProjectUseCase>(
      UpdateProjectUseCase(repository: getIt<ProjectRepository>()));
  getIt.registerSingleton<DeleteProjectUseCase>(
      DeleteProjectUseCase(repository: getIt<ProjectRepository>()));
  getIt.registerSingleton<UploadImagesUseCase>(
      UploadImagesUseCase(repository: getIt<ProjectRepository>()));
  getIt.registerSingleton<UploadVideosUseCase>(
      UploadVideosUseCase(repository: getIt<ProjectRepository>()));
  getIt.registerSingleton<SetCoverImageUseCase>(
      SetCoverImageUseCase(repository: getIt<ProjectRepository>()));
  getIt.registerSingleton<SetLogoUseCase>(
      SetLogoUseCase(repository: getIt<ProjectRepository>()));

  getIt.registerSingleton<AddTeamMemberUseCase>(
      AddTeamMemberUseCase(repository: getIt<ProjectRepository>()));
  getIt.registerSingleton<UpdateTeamMemberUseCase>(
      UpdateTeamMemberUseCase(repository: getIt<ProjectRepository>()));
  getIt.registerSingleton<RemoveTeamMemberUseCase>(
      RemoveTeamMemberUseCase(repository: getIt<ProjectRepository>()));
  getIt.registerSingleton<SubmitForReviewUseCase>(
      SubmitForReviewUseCase(repository: getIt<ProjectRepository>()));

  getIt.registerSingleton<DuplicateProjectUseCase>(
      DuplicateProjectUseCase(repository: getIt<ProjectRepository>()));
  getIt.registerSingleton<ArchiveProjectUseCase>(
      ArchiveProjectUseCase(repository: getIt<ProjectRepository>()));
  getIt.registerSingleton<GetProjectAnalyticsUseCase>(
      GetProjectAnalyticsUseCase(repository: getIt<ProjectRepository>()));
  getIt.registerSingleton<GetProjectInvestorsUseCase>(
      GetProjectInvestorsUseCase(repository: getIt<ProjectRepository>()));
  getIt.registerSingleton<UpdateProjectSettingsUseCase>(
      UpdateProjectSettingsUseCase(repository: getIt<ProjectRepository>()));
  getIt.registerSingleton<UpdateFinancialProjectionsUseCase>(
      UpdateFinancialProjectionsUseCase(
          repository: getIt<ProjectRepository>()));
  getIt.registerSingleton<UpdateImpactDataUseCase>(
      UpdateImpactDataUseCase(repository: getIt<ProjectRepository>()));
  getIt.registerSingleton<UpdateRisksUseCase>(
      UpdateRisksUseCase(repository: getIt<ProjectRepository>()));
  getIt.registerSingleton<UpdateSEOUseCase>(
      UpdateSEOUseCase(repository: getIt<ProjectRepository>()));
  getIt.registerSingleton<ToggleLikeUseCase>(
      ToggleLikeUseCase(repository: getIt<ProjectRepository>()));
  getIt.registerSingleton<ToggleBookmarkUseCase>(
      ToggleBookmarkUseCase(repository: getIt<ProjectRepository>()));
  getIt.registerSingleton<ToggleFollowUseCase>(
      ToggleFollowUseCase(repository: getIt<ProjectRepository>()));

  // getIt.registerSingleton<CreateProject>(
  //   CreateProject(getIt<ProjectRepository>()),
  // );
  // getIt.registerSingleton<GetProjects>(
  //   GetProjects(getIt<ProjectRepository>()),
  // );
  // getIt.registerSingleton<GetProjectById>(
  //   GetProjectById(getIt<ProjectRepository>()),
  // );
  // getIt.registerSingleton<UpdateProject>(
  //   UpdateProject(getIt<ProjectRepository>()),
  // );
  // getIt.registerSingleton<DeleteProject>(
  //   DeleteProject(getIt<ProjectRepository>()),
  // );
  // getIt.registerSingleton<SubmitProject>(
  //   SubmitProject(getIt<ProjectRepository>()),
  // );
  // getIt.registerSingleton<GetFeaturedProjects>(
  //   GetFeaturedProjects(getIt<ProjectRepository>()),
  // );
  // getIt.registerSingleton<GetProjectStats>(
  //   GetProjectStats(getIt<ProjectRepository>()),
  // );
  // getIt.registerSingleton<AddTeamMember>(
  //   AddTeamMember(getIt<ProjectRepository>()),
  // );
  // getIt.registerSingleton<RemoveTeamMember>(
  //   RemoveTeamMember(getIt<ProjectRepository>()),
  // );

  // Use Cases project-doc
  // getIt.registerSingleton<GetProjectDocuments>(
  //   GetProjectDocuments(getIt<ProjectDocumentRepository>()),
  // );
  // getIt.registerSingleton<GetDocumentById>(
  //   GetDocumentById(getIt<ProjectDocumentRepository>()),
  // );
  // getIt.registerSingleton<UploadDocument>(
  //   UploadDocument(getIt<ProjectDocumentRepository>()),
  // );
  // getIt.registerSingleton<UpdateDocument>(
  //   UpdateDocument(getIt<ProjectDocumentRepository>()),
  // );
  // getIt.registerSingleton<DeleteDocument>(
  //   DeleteDocument(getIt<ProjectDocumentRepository>()),
  // );
  // getIt.registerSingleton<DownloadDocument>(
  //   DownloadDocument(getIt<ProjectDocumentRepository>()),
  // );
  // getIt.registerSingleton<ApproveDocument>(
  //   ApproveDocument(getIt<ProjectDocumentRepository>()),
  // );

  // Use Cases project-category
  getIt.registerSingleton<GetCategories>(
    GetCategories(getIt<ProjectCategoryRepository>()),
  );
  getIt.registerSingleton<GetCategoryById>(
    GetCategoryById(getIt<ProjectCategoryRepository>()),
  );

  // Use Cases questionnaire
  getIt.registerSingleton<CheckQuestionnaireRequirement>(
    CheckQuestionnaireRequirement(getIt<QuestionnaireRepository>()),
  );
  getIt.registerSingleton<GetActiveQuestionnaireForMyRole>(
    GetActiveQuestionnaireForMyRole(getIt<QuestionnaireRepository>()),
  );
  getIt.registerSingleton<GetMySubmission>(
    GetMySubmission(getIt<QuestionnaireRepository>()),
  );
  getIt.registerSingleton<SaveAnswer>(
    SaveAnswer(getIt<QuestionnaireRepository>()),
  );
  getIt.registerSingleton<StartQuestionnaire>(
    StartQuestionnaire(getIt<QuestionnaireRepository>()),
  );
  getIt.registerSingleton<SubmitQuestionnaire>(
    SubmitQuestionnaire(getIt<QuestionnaireRepository>()),
  );

  // Initialiser le cache
  await getIt<CacheService>().init();
}
