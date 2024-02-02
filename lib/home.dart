import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nego/about.dart';
import 'package:nego/app/modules/news/controllers/news_controller.dart';
import 'package:nego/app/modules/news/views/news_view.dart';
import 'package:nego/audio_palyer.dart';
import 'package:nego/calendar.dart';
import 'package:nego/home_radio.dart';
import 'package:nego/news.dart';
import 'package:nego/poadcast.dart';
import 'package:just_audio/just_audio.dart';

import 'package:nego/teamwork.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final AudioPlayer 
    _audioPlayer = AudioPlayer();
  bool isPlaying = true;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await _initAudioPlayer();
    });
  }

  Future<void> _initAudioPlayer() async {
    try {
      await _audioPlayer.setUrl('https://radio.socialgenix.com/8004/stream');

      await _audioPlayer.play();
      isPlaying = true;
      if (mounted) setState(() {});
    } catch (e) {
      print('Error initializing audio player: $e');
    }
  }

  Future<void> stop() async {
    await _audioPlayer.pause();
    isPlaying = false;
    if (mounted) setState(() {});
  }

  @override
  void dispose() {
  //    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
  // await  _audioPlayer.dispose();            
  //   });
    super.dispose();
  }

  final _formKey = GlobalKey<FormState>();
  int _currentIndex = 0;

  Widget checkIndex() {
    if (_currentIndex == 0) {
      return HomeRadioPage();
    } else if (_currentIndex == 1) {
      return PoadcastPage();
    } else if (_currentIndex == 2) {
      return NewsView();
    } else {
      return FilteredPage();
    }
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            size: 25,
            color: Colors.grey,
          ),
          onPressed: () {
            scaffoldKey.currentState?.openDrawer();
          },
        ),
        title: const Center(
          child: Text("Egonair"),
        ),
        actions: const [
          IconButton(onPressed: null, icon: Icon(Icons.person)),
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Container(
              margin: const EdgeInsetsDirectional.only(end: 8.0, start: 10.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Form(
                      key: _formKey,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "ابحث هنا",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide.none,
                          ),
                          constraints: const BoxConstraints(),
                          contentPadding: EdgeInsets.zero,
                          filled: true,
                          fillColor: const Color(0xFFF3F4F6),
                          prefixIcon: const Icon(Icons.search),
                        ),
                      ),
                    ),
                  ),
                  checkIndex(),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: 350,
              height: 90,
              decoration: BoxDecoration(
                color: Color(0xFF061D83),
                borderRadius: BorderRadius.circular(20.0),
              ),
              padding: const EdgeInsets.symmetric(
                vertical: 15.0,
                horizontal: 15.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: isPlaying ? stop : _initAudioPlayer,
                    icon: Icon(
                      isPlaying ? Icons.pause : Icons.play_arrow,
                      color: Colors.black,
                      size: 35,
                    ),
                  ),
                  SizedBox(
                    width: 250,
                    child: LinearProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color?>(Colors.red),
                      color: Colors.white,
                      value: (_audioPlayer.duration != null &&
                              _audioPlayer.duration!.inMilliseconds > 0)
                          ? _audioPlayer.position.inMilliseconds /
                              _audioPlayer.duration!.inMilliseconds
                          : 0.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        width: 220,
        backgroundColor: Colors.white,
        child: ListView(
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Color(0xFFF3F4F6),
              ),
              child: Align(
                alignment: Alignment.center,
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 20.0,
                      child: Image.asset(
                        'assets/images/img1.jpeg',
                        height: 20,
                      ),
                    ),
                    const SizedBox(width: 7),
                    const Text("كريم الامير احمد"),
                    const SizedBox(width: 5),
                    const Icon(Icons.keyboard_arrow_left_rounded),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 20.0,
                child: const Icon(Icons.question_mark,
                    textDirection: TextDirection.rtl),
              ),
              title: const Text(
                'من نحن',
                textDirection: TextDirection.rtl,
              ),
              onTap: () {
                Get.to(() => About());
              },
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: Colors.white,
                radius: 20.0,
                child: Icon(Icons.people, textDirection: TextDirection.rtl),
              ),
              title: const Text(
                'فريق العمل',
                textDirection: TextDirection.rtl,
              ),
              onTap: () {
                Get.to(() => TeamWorkPage());
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 20,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xFF061D83),
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_filled,
              size: 24,
            ),
            label: 'الرئسية',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.podcasts,
              size: 24,
            ),
            label: 'البودكاست',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.podcasts),
            label: 'الاخبار',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_month_outlined,
              size: 24,
            ),
            label: 'خريطة البرامج',
          ),
        ],
      ),
    );
  }
}
