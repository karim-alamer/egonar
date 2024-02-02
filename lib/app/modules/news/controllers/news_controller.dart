import 'package:get/get.dart';
import 'package:nego/app/core/domain/repo/user_repo.dart';
import 'package:nego/app/core/infrastructure/models/news.dart';

class NewsController extends GetxController with StateMixin<List<News>> {
  NewsController({required this.repo});
  final IUserRepo repo;

  @override
  void onInit() async {
    super.onInit();
    await repo.getAllNews().then(
          (value) => value.fold(
            (l) => change(null, status: RxStatus.error(l.msg)),
            (r) => {
              if (r.isEmpty)
                {change(null, status: RxStatus.empty())}
              else
                {change(r, status: RxStatus.success())}
            },
          ),
        );
  }
}
