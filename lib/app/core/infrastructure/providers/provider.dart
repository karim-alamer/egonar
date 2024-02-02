import 'package:get/get.dart';
import 'package:nego/app/core/infrastructure/models/news.dart';

abstract class IProvider {
  Future<Response<List<News>?>> getAllNews();
}
