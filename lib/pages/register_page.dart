import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lcstore/pages/login_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _passwordIsVisible = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        body: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height,
            ),
            child: Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),

                  //logo
                  const Icon(
                    Icons.store,
                    size: 150,
                    color: Color.fromRGBO(0, 0, 0, 1),
                  ),

                  const SizedBox(
                    height: 60,
                  ),

                  //text "create account"
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Text(
                          "Create account",
                          style: GoogleFonts.workSans(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                  color: Color.fromRGBO(0, 0, 0, 1)),
                              letterSpacing: 1.0),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 20,
                  ),
                  //textfield campo nome
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: TextField(
                      onTapOutside: (event) => FocusScope.of(context).unfocus(),
                      style: const TextStyle(fontSize: 20),
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.person), hintText: "Name"),
                    ),
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  //textfield campo email
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: TextField(
                      onTapOutside: (event) => FocusScope.of(context).unfocus(),
                      style: const TextStyle(fontSize: 20),
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.email), hintText: "Email"),
                    ),
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  //textfield campo senha
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: TextField(
                      onTapOutside: (event) => FocusScope.of(context).unfocus(),
                      obscureText: _passwordIsVisible,
                      style: const TextStyle(fontSize: 20),
                      decoration: InputDecoration(
                        hintText: "Password",
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
                    height: 40,
                  ),

                  //botao sing up
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
                      "Sign up",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )),
                  ),

                  const SizedBox(
                    height: 30,
                  ),

                  //texto Already have account? sign in
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Already have account?",
                        style: TextStyle(fontSize: 18),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Login_Page()));
                        },
                        child: const Text(
                          " Sign in",
                          style: TextStyle(fontSize: 18, color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
