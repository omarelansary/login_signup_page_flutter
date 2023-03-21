import 'package:flutter/material.dart';
import 'package:registration/controllers/userData.dart';
import 'package:registration/screens/LogIn.dart';
import 'package:registration/screens/Log_in_sign_up.dart';
import 'package:registration/screens/signUp.dart';
import 'package:provider/provider.dart';
import 'package:registration/screens/updatePassword.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => userData(),
      child: MaterialApp(
        title: 'Registration Home Page',
        theme: ThemeData(
          primarySwatch: Colors.cyan,
          appBarTheme: const AppBarTheme(foregroundColor: Colors.black ,backgroundColor: Colors.white,)
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const MyHomePage(),
          '/login_signup':(context) => Log_in_sign_up(),
          '/signUp':(context) => signUp(),
          '/logIn':(context) => logIn(),
          '/updatePassword': (context) => updatePassword(),
        },
      ),
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
            TextButton(
              onPressed: () {
                // ignore: avoid_print
                Navigator.pushNamed(context, '/login_signup');
              },
              style: TextButton.styleFrom(
                        backgroundColor: Colors.black, // Background Color),
              ),
              child: const Text("click me, to login with your account"),
            ),
          ],
        ),
      ),
    );
  }
}
