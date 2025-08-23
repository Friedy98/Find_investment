import 'package:dio/dio.dart';
import 'package:find_invest_mobile/features/project/domain/entities/project_entity.dart';
import 'package:find_invest_mobile/features/project/domain/repositories/project_repository.dart';

class UploadVideosUseCase {
  final ProjectRepository repository;

  UploadVideosUseCase({required this.repository});

  Future<List<Video>> call(String id, List<MultipartFile> files) async {
    return await repository.uploadVideos(id, files);
  }
}