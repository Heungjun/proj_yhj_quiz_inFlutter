import 'package:flutter/material.dart';
import 'package:yhj_quiz_flutter/controller/MyAppController.dart';

class QuizPage extends StatelessWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
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
                  '문제 1. 테스트 문제 입니다.',
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('1번. 1'),
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(
                          MyAppController.to.menuButtonWidth,
                          MyAppController.to.menuButtonHeight,
                        ),
                        primary: Colors.white,
                        shadowColor: Colors.yellow,
                        elevation: 10,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('2번. 2'),
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(
                          MyAppController.to.menuButtonWidth,
                          MyAppController.to.menuButtonHeight,
                        ),
                        primary: Colors.yellow,
                        shadowColor: Colors.yellow,
                        elevation: 10,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('3번. 1'),
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(
                          MyAppController.to.menuButtonWidth,
                          MyAppController.to.menuButtonHeight,
                        ),
                        primary: Colors.white,
                        shadowColor: Colors.yellow,
                        elevation: 10,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('4번. 1'),
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(
                          MyAppController.to.menuButtonWidth,
                          MyAppController.to.menuButtonHeight,
                        ),
                        primary: Colors.white,
                        shadowColor: Colors.yellow,
                        elevation: 10,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
