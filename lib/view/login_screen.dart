import 'package:flutter/material.dart';
// import 'package:ft_solutions/utilities/login_helper_class.dart';
import 'package:get/get.dart';

import '../utilities/common_widgets.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          CommonWidgets.background(0.7, 30, context),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.15,
              left: MediaQuery.of(context).size.width * 0.35,
              child: const Text(
                "Welcome",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              )),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.2,
              left: MediaQuery.of(context).size.width * 0.33,
              child: const Text(
                'Login and get started',
                style: TextStyle(color: Colors.white),
              )),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.2,
            left: MediaQuery.of(context).size.width * 0.05,
            child: Container(
              padding: const EdgeInsets.all(8),
              color: const Color.fromARGB(255, 235, 235, 235),
              height: MediaQuery.sizeOf(context).height * 0.4,
              width: MediaQuery.sizeOf(context).width * 0.9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Email",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  const TextField(
                      decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 211, 210, 210),
                    hintText: "Enter your Email",
                  )),
                  const Text(
                    "Password",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  const TextField(
                      decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 221, 220, 220),
                    hintText: "Enter your Password",
                  )),
                  SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 26, 43, 135)),
                        onPressed: () {
                         // SigninStorage.login(email.text, password.text);
                         Get.offAndToNamed("/home");
                        },
                        child: const Text("Login")),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Create new account."),
                      TextButton(
                          onPressed: () {
                            Get.toNamed("/signin");
                          },
                          child: Text("Signin"))
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
