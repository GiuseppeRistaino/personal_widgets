import 'package:flutter/material.dart';
import 'pages/theme_choice_page.dart';
import 'pages/login_page_01.dart';
import 'pages/login_page_02.dart';
import 'pages/register_page_01.dart';
import 'pages/register_page_02.dart';
import 'pages/main_content_page_01.dart';
import 'pages/task_page_01.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const ChoicePage(),
        '/login1': (context) => const LoginPage1(),
        '/register1': (context) => const RegisterPage1(),
        '/login2': (context) => const LoginPage2(),
        '/register2': (context) => const RegisterPage2(),
        '/content1' : (context) => const MainContentPage1(),
        '/task1' : (context) => const TaskPage1()
      },
    );
  }
}
