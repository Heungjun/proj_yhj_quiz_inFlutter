import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yhj_quiz_flutter/controller/MyAppController.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(),
          _MenuButton('로그인', '/quiz'),
          SizedBox(height: 10),
          _MenuButton('문제풀기', '/quiz'),
          SizedBox(height: 10),
          _MenuButton('문제관리', 'setting'),
          SizedBox(height: 10),
          _MenuButton('설정', 'setting'),
        ],
      ),
    );
  }

  _MenuButton(String text, String path) {
    return ElevatedButton(
      onPressed: () => Get.toNamed(path),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Text(text),
      ),
      style: ElevatedButton.styleFrom(
        fixedSize: Size(
          MyAppController.to.menuButtonWidth,
          MyAppController.to.menuButtonHeight,
        ),
      ),
    );
  }
}
