import 'package:hive_flutter/hive_flutter.dart';
import '../errors/failures.dart';
import 'package:dartz/dartz.dart';

class CacheService {
  late Box _cacheBox;

  Future<void> init() async {
    await Hive.initFlutter();
    _cacheBox = await Hive.openBox('app_cache');
  }

  Future<Either<Failure, void>> save(String key, dynamic value) async {
    try {
      await _cacheBox.put(key, value);
      return const Right(null);
    } catch (e) {
      return Left(CacheFailure());
    }
  }

  Future<Either<Failure, dynamic>> read(String key) async {
    try {
      final value = _cacheBox.get(key);
      if (value == null) {
        return Left(CacheFailure());
      }
      return Right(value);
    } catch (e) {
      return Left(CacheFailure());
    }
  }
}
