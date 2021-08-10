import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yhj_quiz_flutter/controller/MyAppController.dart';
import 'package:yhj_quiz_flutter/controller/QuizController.dart';

class QuizPage extends GetView<QuizController> {
  const QuizPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<QuizController>();
    return Scaffold(
      body: Obx(
        () => Center(
          child: controller.isInit == false
              ? CircularProgressIndicator()
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: MyAppController.to.quizContainerWidth,
                      height: MyAppController.to.quizContainerHeightSmall,
                      color: Colors.yellow,
                      child: Center(
                        child: Text(
                          '문제 ${controller.quizIndex + 1}. ${controller.title}',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          quizAnswerButton(1, controller.d1),
                          quizAnswerButton(2, controller.d2),
                          quizAnswerButton(3, controller.d3),
                          quizAnswerButton(4, controller.d4),
                        ],
                      ),
                    ),
                    SizedBox(height: MyAppController.to.sizedBoxHeight),
                    Container(
                      child: ElevatedButton(
                        child: Text(controller.isLast ? '결과보기' : '다음'),
                        onPressed: () => controller.isLast
                            ? controller.quizIndex
                            : controller.quizIndex++,
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

  quizAnswerButton(int number, String text) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: ElevatedButton(
        onPressed: () => controller.selector = number,
        child: Text('$number번. $text'),
        style: ElevatedButton.styleFrom(
          fixedSize: Size(
            MyAppController.to.menuButtonWidth,
            MyAppController.to.menuButtonHeight,
          ),
          primary: controller.selector == number ? Colors.yellow : Colors.white,
          shadowColor: Colors.yellow,
          elevation: 10,
        ),
      ),
    );
  }
}
