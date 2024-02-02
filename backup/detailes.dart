import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:get/get.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class MyWidget extends StatelessWidget {
  MyWidget({super.key});

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'AmOswasjlsM',
    flags: const YoutubePlayerFlags(
      autoPlay: true,
      mute: true,
    ),
  );
  bool isArrowUp = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child: AppBar(
              leadingWidth: 50,
              leading: Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(Icons.arrow_back_ios_new_rounded)),
              ),
              flexibleSpace: FlexibleSpaceBar(
                titlePadding: const EdgeInsets.only(
                  right: 60.0,
                  bottom: 3,
                ),
                title: RichText(
                    // overflow: TextOverflow.clip,
                    textAlign: TextAlign.start,
                    softWrap: true,
                    maxLines: 5,
                    text: TextSpan(children: [
                      WidgetSpan(
                        child: Container(
                          child: const Text('هواها\n',
                              style: TextStyle(
                                  color: Color(0xFF061D83),
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                      const WidgetSpan(
                        child: SizedBox(
                            height: 10.0), // Adjust the height as needed
                      ),
                    ])),
              ))),
      body: ListView(shrinkWrap: true, children: [
        Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: Form(
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "ابحث هنا",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide:
                        BorderSide.none, // Set border radius to make it rounded
                  ),
                  constraints: const BoxConstraints(),
                  contentPadding: EdgeInsets.zero,
                  // border: InputBorder.none,

                  filled: true,
                  fillColor: const Color(0xFFF3F4F6),
                  prefixIcon: const Icon(Icons.search),
                ),
              ),
            )),
        const SizedBox(
          height: 20,
        ),
        const Padding(
          padding: EdgeInsets.only(right: 20, left: 20),
          child: Text(
            "(حلقة يوم 2024_1_9 الشيخ الشعراي)",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF061D83)),
          ),
        ),
        // Video Player

        Padding(
          padding: const EdgeInsets.only(right: 20, left: 20),
          child: YoutubePlayer(
            controller: _controller,
            showVideoProgressIndicator: true,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 15, right: 20, left: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.calendar_month_outlined,
                color: Color(0xFF061D83),
              ),
              Text(
                "بدءت اول حلقة في",
              ),
              Text(
                "1-1-2024",
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, right: 20, left: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  'assets/images/img1.jpeg',
                  height: 70,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                width: 3,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("  مقدم البرامج", style: TextStyle(fontSize: 18)),
                  SizedBox(
                    height: 20,
                  ),
                  Text("كريم الامير",
                      style: TextStyle(
                          color: Color(0xFF061D83),
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                ],
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 25, right: 50, left: 50),
          child: Row(children: [
            Icon(Icons.mic),
            SizedBox(
              width: 5,
            ),
            InkWell(
              onTap: null,
              child: Text(
                'عرض المحتوي المكتوب من الحلقة',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF061D83),
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ]),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 25, right: 20, left: 20),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              "معجبين بالحلقة",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF061D83),
              ),
            ),
            Row(
              children: [
                Icon(
                  Icons.thumb_up_outlined,
                ),
                SizedBox(
                  width: 10,
                ),
                Text("(1)"),
                Text("اعجابات"),
              ],
            ),
          ]),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 25, right: 20, left: 20),
          child: Row(children: [
            const Text(
              "اضيف تعليقك هنا",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              width: 2,
            ),
            Container(
              height: 0.5,
              width: 220, // Adjust the length of the line
              color: Colors.black, // Adjust the color of the line
            ),
          ]),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 25, right: 20, left: 20),
          child: Container(
            padding: const EdgeInsets.only(
              right: 10,
            ),
            height: 120,
            color: const Color(0xFFF3F4F6),
            child: const Padding(
              padding: EdgeInsets.only(
                top: 15,
                right: 6,
              ),
              child: Row(
                children: [
                  Icon(
                    EvaIcons.messageSquareOutline,
                    size: 40,
                    color: Colors.grey,
                  ),
                  SizedBox(
                      height: 100,
                      child: Text(
                        "اكتب تعليقك هنا...",
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ))
                ],
              ),
            ),
          ),
        ),

        Padding(
          padding:
              const EdgeInsets.only(top: 18, bottom: 25, right: 20, left: 250),
          child: Container(
            height: 60,
            color: const Color(0xFFF3F4F6),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Text(
                    "ارسل تعليقك",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 18,
            bottom: 25,
            right: 20,
            left: 20,
          ),
          child: Container(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Flexible(
                  child: Text(
                    "مشاهدة جميع التعليقات ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        fontSize: 20,
                        color: Color(0xFF061D83)),
                  ),
                ),
                GestureDetector(
                  onTap: null,
                  child: Container(
                    width: 50,
                    height: 30,
                    decoration: const BoxDecoration(
                      color: Color(0xFF061D83), // Adjust the color as needed
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: RotationTransition(
                        turns: isArrowUp
                            ? const AlwaysStoppedAnimation(0 / 360)
                            : const AlwaysStoppedAnimation(180 / 360),
                        child: const Icon(
                          Icons.keyboard_arrow_up_rounded,

                          color: Colors.white, // Adjust the color as needed
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(top: 18, bottom: 25, right: 20, left: 250),
          child: Container(
            height: 60,
          ),
        ),
      ]),
    );
  }
}
