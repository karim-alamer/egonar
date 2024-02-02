import 'package:get/get_connect/http/src/response/response.dart';
import 'package:nego/app/core/infrastructure/api_provider_imp/core/base.dart';
import 'package:nego/app/core/infrastructure/models/news.dart';
import 'package:nego/app/core/infrastructure/providers/provider.dart';
import 'package:nego/colored_print.dart';
import 'package:get/get.dart';

class ProviderImp extends BaseProvider implements IProvider {
  @override
  Future<Response<List<News>?>> getAllNews() async {
    coloredPrint("Get: ${httpClient.baseUrl}posts?categories=5");

   
    // https://egonair.com/wp-json/wp/v2/posts?categories=5
    httpClient.defaultDecoder = (dynamic value) {
      try {
        coloredPrint("Data: $value");
        return List<News>.from((value as Iterable).map((e) => News(
            id: e["id"],
            title: e['title']['rendered'],
            image: e["jetpack_featured_media_url"],imagedes:e["excerpt"]["rendered"] ))).toList();
      } catch (e) {
        coloredPrint("Error: $e");
        print(">>>>>>>>>>>>>>>>>i am under stand you");
        return null;
      }
    };
    return await get("posts?categories=5");
  }
}
