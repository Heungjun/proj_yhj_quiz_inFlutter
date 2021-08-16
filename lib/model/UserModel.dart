class UserModel {
  final String id;
  final String pw;
  final bool isLogin;

  UserModel({
    required this.id,
    required this.pw,
    required this.isLogin,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json["id"],
      pw: json["password"],
      isLogin: true,
    );
  }
}
