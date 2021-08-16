import 'package:get/get.dart';
import 'package:yhj_quiz_flutter/model/UserModel.dart';

class UserRepository extends GetConnect {
  static UserRepository get to => Get.find();

  @override
  void onInit() {
    // httpClient.baseUrl = 'http://192.168.0.5:7129';
    httpClient.baseUrl = 'http://115.22.153.32:80';
    super.onInit();
  }

  Future<UserModel> getUser(Map data) async {
    String url = '/login';
    final response = await post(url, data);

    if (response.status.hasError) {
      return Future.error('로그인 실패');
    } else
      return UserModel.fromJson(response.body[0]);
  }
}
