import 'package:flutter/material.dart';
import 'package:minimal_sosial_media/components/my_button.dart';
import 'package:minimal_sosial_media/components/my_textfield.dart';

class RegisterPage extends StatelessWidget {
  final void Function()? onTap;

  RegisterPage({super.key, required this.onTap});

  // text controllers
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPwController = TextEditingController();

  // Register method
  void Register() {}

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
                    size: 50,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),

                  const SizedBox(
                    height: 25,
                  ),

                  //app name
                  const Text(
                    "R E G I S T E R",
                    style: TextStyle(fontSize: 16),
                  ),

                  const SizedBox(
                    height: 25,
                  ),

                  // username textfield
                  MyTextField(
                    hintText: "Username",
                    obsecureText: false,
                    controller: usernameController,
                  ),

                  const SizedBox(
                    height: 10,
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

                  // confirm password textfield
                  MyTextField(
                    hintText: "Confirm Password",
                    obsecureText: true,
                    controller: confirmPwController,
                  ),

                  const SizedBox(
                    height: 10,
                  ),

                  const SizedBox(
                    height: 25,
                  ),
                  // Register button
                  MyButton(
                    text: "Register",
                    onTap: Register,
                  ),

                  const SizedBox(
                    height: 25,
                  ),

                  // don't have an account? Register here
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an Account?",
                        style: TextStyle(
                            color:
                                Theme.of(context).colorScheme.inversePrimary),
                      ),
                      GestureDetector(
                        onTap: onTap,
                        child: const Text(
                          " Login here",
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
