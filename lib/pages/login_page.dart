import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lcstore/pages/register_page.dart';

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
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        body: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height,
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 60,
                ),

                //text "Login to your account"
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Text(
                    "Login to your \nAccount",
                    style: GoogleFonts.ptSans(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 50,
                            color: Color.fromRGBO(0, 0, 0, 1)),
                        letterSpacing: 3.0),
                  ),
                ),

                const SizedBox(
                  height: 40,
                ),

                //text fild email
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: TextField(
                    onTapOutside: (event) => FocusScope.of(context).unfocus(),
                    style: const TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)),
                      prefixIcon: const Icon(Icons.email),
                      hintText: "Email",
                    ),
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),

                //text fild senha
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: TextField(
                    onTapOutside: (event) => FocusScope.of(context).unfocus(),
                    obscureText: _passwordIsVisible,
                    style: const TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                      hintText: "Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)),
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
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                      Text(
                        " Click here!",
                        style: TextStyle(
                            fontSize: 18,
                            color: Color.fromRGBO(72, 163, 255, 1),
                            fontWeight: FontWeight.w700),
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
                    vertical: 18,
                  ),
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      borderRadius: BorderRadius.circular(15)),
                  width: double.infinity,
                  child: const Center(
                      child: Text(
                    "Login",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5),
                  )),
                ),

                const SizedBox(
                  height: 40,
                ),

                //text "or"
                const Text(
                  "Or login with",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),

                const SizedBox(
                  height: 30,
                ),

                //sign on google
                Image.asset(
                  'lib/imagens/googleLogo.png',
                  height: 50,
                ),

                const SizedBox(
                  height: 30,
                ),

                //texto para poder criar conta
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account?",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const RegisterPage()));
                      },
                      child: const Text(
                        " Sign up",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.blue,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
