import 'package:flutter/material.dart';
import 'package:registration/screens/Log_in_sign_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Registration Home Page',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        appBarTheme: const AppBarTheme(foregroundColor: Colors.black ,backgroundColor: Colors.white,)
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(),
        '/login_signup':(context) => Log_in_sign_up(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Getting started page"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              child: const Text("click in to login with your account"),
              onTap: () {
                // ignore: avoid_print
                Navigator.pushNamed(context, '/login_signup');
              },
            ),
          ],
        ),
      ),
    );
  }
}
