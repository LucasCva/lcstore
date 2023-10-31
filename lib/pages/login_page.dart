import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class Login_Page extends StatefulWidget {
  const Login_Page({super.key});

  @override
  State<Login_Page> createState() => _Login_PageState();
}

// ignore: camel_case_types
class _Login_PageState extends State<Login_Page> {
  bool _passwordIsVisible = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(235, 235, 235, 1),
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height,
            ),
            child: Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 25,
                  ),
                  //logo
                  const Icon(
                    Icons.store,
                    size: 150,
                    color: Color.fromRGBO(72, 163, 255, 1),
                  ),

                  const SizedBox(
                    height: 60,
                  ),

                  //text "welcome back!"
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Text(
                          "Welcome back!",
                          style: GoogleFonts.workSans(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                  color: Color.fromRGBO(72, 163, 255, 1)),
                              letterSpacing: 1.0),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 30,
                  ),

                  //text fild email
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: TextField(
                      style: TextStyle(fontSize: 20),
                      decoration:
                          InputDecoration(prefixIcon: Icon(Icons.email)),
                    ),
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  //text fild senha
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: TextField(
                      obscureText: _passwordIsVisible,
                      style: const TextStyle(fontSize: 20),
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.key),
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              _passwordIsVisible = !_passwordIsVisible;
                            });
                          },
                          child: Icon(_passwordIsVisible
                              ? Icons.visibility_off
                              : Icons.visibility),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  //text "forgot password"
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Forgot password?",
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          " Click here!",
                          style: TextStyle(
                              fontSize: 18,
                              color: Color.fromRGBO(72, 163, 255, 1)),
                        )
                      ],
                    ),
                  ),

                  const SizedBox(
                    height: 40,
                  ),

                  //button login
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 15,
                    ),
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(25)),
                    width: double.infinity,
                    child: const Center(
                        child: Text(
                      "Login",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )),
                  ),

                  const SizedBox(
                    height: 40,
                  ),

                  //text "or"
                  const Text(
                    "Or login with",
                    style: TextStyle(fontSize: 18),
                  ),

                  const SizedBox(
                    height: 40,
                  ),

                  //sign on google
                  Image.asset(
                    'lib/imagens/googleLogo.png',
                    height: 50,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
