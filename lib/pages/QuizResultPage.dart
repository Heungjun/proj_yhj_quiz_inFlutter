import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yhj_quiz_flutter/controller/MyAppController.dart';

class QuizResultPage extends StatelessWidget {
  const QuizResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(Get.parameters);
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: MyAppController.to.quizContainerWidth,
                height: MyAppController.to.quizContainerHeightSmall,
                color: Colors.yellow,
                child: Center(
                  child: Text(
                    // '문제 ${controller.quizIndex + 1}. ${controller.title}',
                    '문제 결과',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(height: MyAppController.to.sizedBoxHeight),
              Container(
                width: MyAppController.to.quizContainerWidth,
                height: MyAppController.to.quizContainerHeight,
                // color: Colors.white,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    '결과: ${Get.parameters['correct']} / ${Get.parameters['count']}',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(height: MyAppController.to.sizedBoxHeight),
              Container(
                child: ElevatedButton(
                  child: Text('홈으로'),
                  onPressed: () => Get.offAndToNamed('/'),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(
                      MyAppController.to.menuButtonWidth,
                      MyAppController.to.menuButtonHeight,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
