import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:registration/constants.dart';
import 'package:registration/controllers/userData.dart';

class logIn extends StatelessWidget {
  const logIn({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Log in",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: Center(
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: CircleAvatar(
                  backgroundColor: Colors.grey.shade300,
                  radius: 30,
                  child: const Icon(
                    Icons.account_circle_outlined,
                    color: Colors.grey,
                    size: 50,
                  ),
                ),
              ),
              Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: kPagePadding),
                    child:
                        Text(Provider.of<userData>(context, listen: true).email),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: GestureDetector(
                      child: const Text(
                        'Change',
                        style: TextStyle(color: Colors.blue),
                      ),
                      // ignore: avoid_print
                      onTap: () => Navigator.pushNamed(context, '/login_signup'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: kPagePadding),
                    child: TextField(
                      decoration: const InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.cyan),
                        ),
                        labelText: 'Password*',
                        hintText: 'Enter password',
                      ),
                      onChanged: (value) {
                        Provider.of<userData>(context, listen: false).changePassword(value.toString());
                      },
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: kPagePadding, vertical: kPagePadding),
                    child: ElevatedButton(
                      onPressed: Provider.of<userData>(context, listen: false).passwordValidity
                          ? () {
                            Provider.of<userData>(context, listen: false).changePassword('0');
                              Navigator.pushNamed(context, '/signUp');
                            }
                          : null,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange, // Background Color),
                      ),
                      child: const Text(
                        "Log in",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  Container(
                    child: GestureDetector(
                      child: const Text(
                        'I forgot my password',
                        style: TextStyle(color: Colors.blue),
                      ),
                      // ignore: avoid_print
                      onTap: () => Navigator.pushNamed(context, '/updatePassword'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


        // body: Container(
        //   padding: EdgeInsets.all(kPagePadding),
        //   child: Column(
        //     crossAxisAlignment: CrossAxisAlignment.center,
        //     children: [Container(
        //       padding: EdgeInsets.only(top: 20),
        //       child: Column(
        //         // ignore: prefer_const_literals_to_create_immutables
        //         children: [
        //           CircleAvatar(
        //             backgroundColor: Colors.grey.shade300,
        //             child: const Icon(
        //               Icons.account_circle_outlined,
        //               color: Colors.grey,
        //             ),
        //           ),
        //         ],
        //       ),
        //     )
        //   ]),
        // ),