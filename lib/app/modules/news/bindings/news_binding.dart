import 'package:get/get.dart';
import 'package:nego/app/core/domain/repo/user_repo.dart';
import 'package:nego/app/core/infrastructure/api_provider_imp/provider_imp.dart';
import 'package:nego/app/core/infrastructure/providers/provider.dart';
import 'package:nego/app/core/infrastructure/repo_imp.dart/user_repo_imp.dart';

import '../controllers/news_controller.dart';

class NewsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IProvider>(
      () => ProviderImp(),
    );
    Get.lazyPut<IUserRepo>(
      () => UserRepoImp(providr: Get.find()),
    );
    Get.lazyPut<NewsController>(
      () => NewsController(repo: Get.find()),
    );
  }
}
