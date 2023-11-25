import 'package:flutter/material.dart';
import 'package:ft_solutions/utilities/login_helper_class.dart';
import 'package:get/get.dart';

import '../utilities/common_widgets.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});

 final TextEditingController first_name = TextEditingController();
 final TextEditingController last_name = TextEditingController();
final  TextEditingController email = TextEditingController();
 final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          CommonWidgets.background(0.85, 30, context),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.1,
              left: MediaQuery.of(context).size.width * 0.4,
              child: const Text(
                "Sing In",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              )),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.2,
            left: MediaQuery.of(context).size.width * 0.05,
            child: Container(
              // padding: const EdgeInsets.all(8),
              //  color: const Color.fromARGB(255, 235, 235, 235),
              height: MediaQuery.sizeOf(context).height * 0.6,
              width: MediaQuery.sizeOf(context).width * 0.9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "First Name",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  TextField(
                      controller: first_name,
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Color.fromARGB(255, 211, 210, 210),
                        hintText: "Enter your first name",
                      )),
                  const Text(
                    "Last Name",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  TextField(
                      controller: last_name,
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Color.fromARGB(255, 211, 210, 210),
                        hintText: "Enter your last name",
                      )),
                  const Text(
                    "Email",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  TextField(
                      controller: email,
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Color.fromARGB(255, 221, 220, 220),
                        hintText: "Enter your email",
                      )),
                  const Text(
                    "Password",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  TextField(
                      controller: password,
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Color.fromARGB(255, 221, 220, 220),
                        hintText: "Enter your password",
                      )),
                  SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 26, 43, 135)),
                        onPressed: () {
                          SigninStorage.saveUserDetails(
                              firstName: first_name.text,
                              lastName: last_name.text,
                              email: email.text,
                              password: password.text);

                              Get.toNamed("/login");
                        },
                        child: const Text("Sign In")),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
