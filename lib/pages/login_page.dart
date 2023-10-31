import 'package:flutter/material.dart';

class Login_Page extends StatefulWidget {
  const Login_Page({super.key});

  @override
  State<Login_Page> createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
          body: Center(
        child: Column(
          children: [

            //logo
            Icon(
              Icons.store,
              size: 100,
            )
          ],
        ),
      )
        

          //text "welcome back!"

          //text fild email

          //text fild senha

          //text "forgot password"

          //button login

          //sign on google
          ),
    );
  }
}
