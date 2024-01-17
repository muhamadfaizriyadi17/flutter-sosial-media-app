import 'package:flutter/material.dart';
import 'package:minimal_sosial_media/components/my_button.dart';
import 'package:minimal_sosial_media/components/my_textfield.dart';

class LoginPage extends StatelessWidget {
  final void Function()? onTap;

  LoginPage({super.key, required this.onTap});

  // text controllers
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // login method
  void login() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Center(
          child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //logo
                  Icon(
                    Icons.person,
                    size: 80,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),

                  const SizedBox(
                    height: 25,
                  ),

                  //app name
                  const Text(
                    "S I M P L E",
                    style: TextStyle(fontSize: 20),
                  ),

                  const SizedBox(
                    height: 50,
                  ),

                  // email textfield
                  MyTextField(
                    hintText: "Email",
                    obsecureText: false,
                    controller: emailController,
                  ),

                  const SizedBox(
                    height: 10,
                  ),

                  // password textfield
                  MyTextField(
                    hintText: "Password",
                    obsecureText: true,
                    controller: passwordController,
                  ),

                  const SizedBox(
                    height: 10,
                  ),
                  // forgot password
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Forgot Password",
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary),
                      )
                    ],
                  ),

                  const SizedBox(
                    height: 25,
                  ),
                  // sign in button
                  MyButton(
                    text: "Login",
                    onTap: login,
                  ),

                  const SizedBox(
                    height: 25,
                  ),

                  // don't have an account? Register here
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an Account?",
                        style: TextStyle(
                            color:
                                Theme.of(context).colorScheme.inversePrimary),
                      ),
                      GestureDetector(
                        onTap: onTap,
                        child: const Text(
                          " Register here",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              )),
        ));
  }
}
