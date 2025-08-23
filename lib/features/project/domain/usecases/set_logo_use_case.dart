import 'package:dio/dio.dart';
import 'package:find_invest_mobile/features/project/domain/repositories/project_repository.dart';

class SetLogoUseCase {
  final ProjectRepository repository;

  SetLogoUseCase({required this.repository});

  Future<String> call(String id, MultipartFile file) async {
    return await repository.setLogo(id, file);
  }
}