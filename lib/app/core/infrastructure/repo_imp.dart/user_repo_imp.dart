import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:nego/app/core/domain/repo/user_repo.dart';
import 'package:nego/app/core/infrastructure/failures/server_failure.dart';
import 'package:nego/app/core/infrastructure/models/news.dart';
import 'package:nego/app/core/infrastructure/providers/provider.dart';

class UserRepoImp implements IUserRepo {
  const UserRepoImp({required this.providr});
  final IProvider providr;

  @override
  Future<Either<ServerFailures, List<News>>> getAllNews() async {
    Response<List<News>?> _allNews = await providr.getAllNews();
    if (_allNews.isOk && (_allNews.body != null)) {
      return right(_allNews.body!);
    } else if (_allNews.status.isNotFound) {
      return left(ServerFailures.noFoundFailure());
    } else if (_allNews.status.connectionError) {
      return left(const ServerFailures.connectionFailure());
    } else if (_allNews.isOk && (_allNews.body == null)) {
      return left(ServerFailures.unexpectedFailure());
    } else {
      return left(
        ServerFailures.unexpectedFailure(
          msg: _allNews.statusText ?? "Server Error",
        ),
      );
    }
  }
}
