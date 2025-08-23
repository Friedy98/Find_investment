import 'package:dio/dio.dart';
import 'package:find_invest_mobile/features/project_repport/domain/entities/project_report_entity.dart';
import 'package:find_invest_mobile/features/project_repport/domain/repositories/project_report_repository.dart';

class CreateReportUseCase {
  final ProjectReportRepository repository;

  CreateReportUseCase({required this.repository});

  Future<ProjectReportEntity> call(
      Map<String, dynamic> data, FormData formData) {
    return repository.createReport(data, formData);
  }
}
