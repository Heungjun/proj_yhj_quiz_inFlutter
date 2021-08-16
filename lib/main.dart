import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yhj_quiz_flutter/controller/MyAppController.dart';
import 'package:yhj_quiz_flutter/controller/QuizController.dart';
import 'package:yhj_quiz_flutter/controller/UserController.dart';
import 'package:yhj_quiz_flutter/pages/HomePage.dart';
import 'package:yhj_quiz_flutter/pages/LoginPage.dart';
import 'package:yhj_quiz_flutter/pages/QuizPage.dart';
import 'package:yhj_quiz_flutter/pages/QuizResultPage.dart';
import 'package:yhj_quiz_flutter/pages/SettingPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.put(MyAppController(screenWidth: Get.width, screenHeight: Get.height));
    return GetMaterialApp(
      title: 'Flutter Demo ${MyAppController.to.screenWidth}',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        scaffoldBackgroundColor: Colors.purple,
      ),
      initialRoute: '/',
      initialBinding:
          BindingsBuilder(() => Get.put<UserController>(UserController())),
      getPages: [
        GetPage(name: '/', page: () => HomePage()),
        GetPage(
          name: '/quiz',
          page: () => QuizPage(),
          binding: BindingsBuilder(
            () => Get.lazyPut<QuizController>(() => QuizController()),
          ),
        ),
        GetPage(name: '/quizResult', page: () => QuizResultPage()),
        GetPage(name: '/setting', page: () => SettingPage()),
        GetPage(name: '/login', page: () => LoginPage()),
      ],
    );
  }
}
