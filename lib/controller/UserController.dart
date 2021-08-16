import 'package:get/get.dart';
import 'package:yhj_quiz_flutter/model/UserModel.dart';
import 'package:yhj_quiz_flutter/repository/UserRepository.dart';

class UserController extends GetxService {
  static UserController get to => Get.find();
  RxString _id = "".obs;
  RxString password = "".obs;
  RxBool _isLogin = false.obs;
  bool get isLogin => this._isLogin.value;
  set isLogin(value) => _isLogin(value);

  Future<bool> getUser({
    required String id,
    required String pw,
  }) async {
    Get.put(UserRepository());
    UserModel _user = await UserRepository.to.getUser({"id": id, "pw": pw});

    _id(_user.id);
    _isLogin(true);

    return this.isLogin;
  }
}
