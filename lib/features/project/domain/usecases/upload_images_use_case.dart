import 'package:dio/dio.dart';
import 'package:find_invest_mobile/features/project/domain/entities/project_entity.dart';
import 'package:find_invest_mobile/features/project/domain/repositories/project_repository.dart';

class UploadImagesUseCase {
  final ProjectRepository repository;

  UploadImagesUseCase({required this.repository});

  Future<List<Image>> call(String id, List<MultipartFile> files) async {
    return await repository.uploadImages(id, files);
  }
}