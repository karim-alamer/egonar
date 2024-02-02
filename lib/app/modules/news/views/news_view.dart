import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:nego/colored_print.dart';
import 'package:html/parser.dart';
import 'package:extended_image/extended_image.dart';

import '../controllers/news_controller.dart';

class NewsView extends GetView<NewsController> {
  const NewsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 8),
        height: 600,
        child: Get.find<NewsController>().obx(
          onError: (error) => Center(child: Text(error ?? "")),
          onLoading: const Center(
              child: CircularProgressIndicator(color: Colors.black)),
          (state) => ListView.builder(
              itemCount: state?.length ?? 0,
              itemBuilder: (context, index) {
                // state[index].imagedes
                return NewsCard(
                  title: state![index].title,
                  image: state[index].image,
                  htmlContent:
                      state[index].imagedes,
                );

                // Add more NewsCard widgets as needed
              }),
        ));
  }
}



class NewsCard extends StatelessWidget {
  final String title;
  final String image;
  final String htmlContent;

  NewsCard(
      {required this.title, required this.image, required this.htmlContent});

  @override
  Widget build(BuildContext context) {
    coloredPrint("this is the image url ${image.toString()}");
    var document = parse(
        htmlContent);
    String textContent = parse(document.body!.text).documentElement!.text;
    coloredPrint(">>>>>>>>>>>$textContent");
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              title,
              style:
                  const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ExtendedImage.network(
              image,
              width: double.infinity,
              height: 200.0, // Adjust the height as needed
              fit: BoxFit.cover,
              cache: true,
              loadStateChanged: (ExtendedImageState state) {
                switch (state.extendedImageLoadState) {
                  case LoadState.loading:
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  case LoadState.completed:
                    return null;
                  case LoadState.failed:
                    return Center(
                      child: Icon(Icons.error),
                    );
                }
              },
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
               textContent,
              ) // Render HTML content
              ),
        ],
      ),
    );
  }
}
