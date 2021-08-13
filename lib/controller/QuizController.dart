import 'package:get/get.dart';
import 'package:yhj_quiz_flutter/model/QuizModel.dart';
import 'package:yhj_quiz_flutter/repository/QuizRepository.dart';

class QuizController extends GetxController {
  static QuizController get to => Get.find();

  RxBool _isInit = false.obs;
  bool get isInit => _isInit.value;

  // List<Quiz>
  late RxList<QuizModel> quizzes;
  String get title => quizzes[quizIndex].title;
  String get d1 => quizzes[quizIndex].d1;
  String get d2 => quizzes[quizIndex].d2;
  String get d3 => quizzes[quizIndex].d3;
  String get d4 => quizzes[quizIndex].d4;
  int get selector => quizzes[quizIndex].selector;
  set selector(int number) => {
        quizzes[quizIndex].selector = number,
        quizzes.refresh(),
      };
  // List<Quiz> />

  RxInt _quizIndex = 0.obs;
  int get quizIndex => _quizIndex.value;
  set quizIndex(int index) => _quizIndex(index);

  late int lastIndex;
  bool get isLast => lastIndex == quizIndex;

  @override
  void onInit() {
    Get.put(QuizRepository());
    _getQuizzes();
    super.onInit();
  }

  void _getQuizzes() async {
    List<QuizModel> _quizzes = await QuizRepository.to.readQuizzes();
    quizzes = _quizzes.obs;
    lastIndex = quizzes.length - 1;
    _isInit(true);
  }

  int getCorrectCount() {
    int count = 0;

    for (int i = 0; i <= lastIndex; i++)
      if (quizzes[i].selector == quizzes[i].answer) count++;
    return count;
  }
}
