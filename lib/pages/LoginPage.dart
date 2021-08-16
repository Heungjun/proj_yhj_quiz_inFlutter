import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yhj_quiz_flutter/controller/MyAppController.dart';
import 'package:yhj_quiz_flutter/controller/UserController.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var idController = TextEditingController();
    var pwController = TextEditingController();
    var responseController = TextEditingController();
    return Scaffold(
      body: Center(
        child: Container(
          width: MyAppController.to.quizContainerWidth,
          height: MyAppController.to.quizContainerHeight,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '로그인',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextFormField(controller: idController),
              TextFormField(controller: pwController),
              TextFormField(
                enabled: false,
                controller: responseController,
              ),
              ElevatedButton(
                onPressed: () {
                  responseController.text = "";
                  UserController.to
                      .getUser(
                        id: idController.text.trim(),
                        pw: pwController.text.trim(),
                      )
                      .then(
                        (value) => value
                            ? Get.offAllNamed('/')
                            : responseController.text = "로그인 실패",
                      )
                      .catchError(
                          (onError) => {responseController.text = onError});
                },
                child: Text('로그인'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
