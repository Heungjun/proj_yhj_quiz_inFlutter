import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
          ElevatedButton(
              onPressed: () => Get.toNamed('/setting'),
              child: Text('화면이동 테스트_setting')),
          ElevatedButton(
              onPressed: () => Get.toNamed('/quiz'),
              child: Text('화면이동 테스트_quiz')),
        ],
      ),
    );
  }
}
