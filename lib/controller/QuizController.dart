import 'package:get/get.dart';
import 'package:yhj_quiz_flutter/model/QuizModel.dart';
import 'package:yhj_quiz_flutter/repository/QuizRepository.dart';

class QuizController extends GetxController {
  static QuizController get to => Get.find();

  late RxList<QuizModel> quizzes;
  RxBool _isInit = false.obs;
  bool get isInit => _isInit.value;

  @override
  void onInit() {
    Get.put(QuizRepository());
    _getQuizzes();
    super.onInit();
  }

  void _getQuizzes() async {
    List<QuizModel> _quizzes = await QuizRepository.to.readQuizzes();
    quizzes = _quizzes.obs;
    _isInit(true);
  }
}
