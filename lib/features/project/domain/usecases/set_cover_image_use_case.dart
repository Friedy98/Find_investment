import 'package:dio/dio.dart';
import 'package:find_invest_mobile/features/project/domain/repositories/project_repository.dart';

class SetCoverImageUseCase {
  final ProjectRepository repository;

  SetCoverImageUseCase({required this.repository});

  Future<String> call(String id, MultipartFile file) async {
    return await repository.setCoverImage(id, file);
  }
}