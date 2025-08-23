import 'package:dio/dio.dart';
import 'package:find_invest_mobile/features/project_repport/domain/entities/project_report_entity.dart';
import 'package:find_invest_mobile/features/project_repport/domain/repositories/project_report_repository.dart';

class AddAttachmentUseCase {
  final ProjectReportRepository repository;

  AddAttachmentUseCase({required this.repository});

  Future<ProjectReportEntity> call(String reportId, FormData formData) {
    return repository.addAttachment(reportId, formData);
  }
}