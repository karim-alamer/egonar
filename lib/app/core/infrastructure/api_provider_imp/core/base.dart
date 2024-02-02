import 'package:get/get.dart';
import 'package:nego/app/core/utilities/constants.dart';

class BaseProvider extends GetConnect {
  @override
  void onInit() {
    super.onInit();
    httpClient.baseUrl = BASE_URL;
    httpClient.timeout = const Duration(seconds: 30);
  }
}
