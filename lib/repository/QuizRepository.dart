import 'package:get/get.dart';
import 'package:yhj_quiz_flutter/model/QuizModel.dart';

class QuizRepository extends GetConnect {
  static QuizRepository get to => Get.find();

  @override
  void onInit() {
    httpClient.baseUrl = 'http://192.168.0.5:7129';
    super.onInit();
  }

  Future<List<QuizModel>> readQuizzes() async {
    String url = '/quiz';
    final response = await get(url);

    if (response.status.hasError)
      return Future.error(response.statusText ?? '오류발생');
    else {
      List<dynamic> responseBody = response.body as List<dynamic>;
      List<QuizModel> quizzes = [];

      for (int i = 0, loopCnt = responseBody.length; i < loopCnt; i++) {
        quizzes.add(QuizModel.fromJson(responseBody[i]));
      }

      return quizzes;
    }
  }
}
