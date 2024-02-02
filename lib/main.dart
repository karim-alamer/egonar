import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nego/app/modules/news/bindings/news_binding.dart';
import 'package:nego/home.dart';


class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  HttpOverrides.global =  MyHttpOverrides();

  runApp(const MyApp());
}



Future<void> initializeService() async {
  // final service = FlutterBackgroundService();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: NewsBinding(),
      locale: const Locale('ar'),
      fallbackLocale: const Locale('ar'),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
