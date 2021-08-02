import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yhj_quiz_flutter/pages/HomePage.dart';
import 'package:yhj_quiz_flutter/pages/QuizPage.dart';
import 'package:yhj_quiz_flutter/pages/SettingPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => HomePage()),
        GetPage(name: '/quiz', page: () => QuizPage()),
        GetPage(name: '/setting', page: () => SettingPage()),
      ],
    );
  }
}