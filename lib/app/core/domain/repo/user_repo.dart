import 'package:dartz/dartz.dart';
import 'package:nego/app/core/infrastructure/failures/server_failure.dart';
import 'package:nego/app/core/infrastructure/models/news.dart';

abstract class IUserRepo {
  Future<Either<ServerFailures, List<News>>> getAllNews();
}
