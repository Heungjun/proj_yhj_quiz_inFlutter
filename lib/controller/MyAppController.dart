import 'package:get/get.dart';

class MyAppController extends GetxService {
  static MyAppController get to => Get.find();

  final double screenWidth;
  final double screenHeight;
  MyAppController({required this.screenWidth, required this.screenHeight});

  double get menuButtonWidth => screenWidth * 0.8;
  double get menuButtonHeight => screenHeight * 0.06;

  double get quizContainerWidth => screenWidth * 0.8;
  double get quizContainerHeight => screenHeight * 0.6;
  double get quizContainerHeightSmall => screenHeight * 0.07;

  double get sizedBoxHeight => screenHeight * 0.02;
}
