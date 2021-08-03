import 'package:get/get.dart';

class MyAppController extends GetxService {
  static MyAppController get to => Get.find();

  final double screenWidth;
  final double screenHeight;
  MyAppController({required this.screenWidth, required this.screenHeight});

  double get menuButtonWidth => screenWidth * 0.8;
  double get menuButtonHeight => screenHeight * 0.06;
}
