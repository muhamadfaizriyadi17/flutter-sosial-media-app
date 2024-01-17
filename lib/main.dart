import 'package:flutter/material.dart';
import 'package:minimal_sosial_media/auth/login_or_register.dart';
import 'package:minimal_sosial_media/pages/register_page.dart';
import 'package:minimal_sosial_media/theme/dark_mode.dart';
import 'package:minimal_sosial_media/theme/light_mode.dart';
import 'pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginOrRegister(),
      theme: LightMode,
      darkTheme: DarkMode,
    );
  }
}
