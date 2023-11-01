import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lcstore/pages/login_page.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height,
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),

                //imagem
                const Image(
                  image: AssetImage("lib/imagens/imagemInicial.png"),
                  height: 370,
                ),

                //texto escrito "Mobile ecomerce"

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Mobile",
                        style: GoogleFonts.ptSans(
                          textStyle: const TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.w900,
                              letterSpacing: 3),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "ecommerce",
                        style: GoogleFonts.ptSans(
                          textStyle: const TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.w900,
                              letterSpacing: 3),
                        ),
                      )
                    ],
                  ),
                ),

                const SizedBox(
                  height: 15,
                ),

                //texto explicativo
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    "A mobile e-commerce is an online store for shopping on mobile devices, such as smartphones and tablets.",
                    style: GoogleFonts.ptSans(
                      textStyle: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                const SizedBox(
                  height: 30,
                ),

                //botão para ir para o login
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Login_Page()));
                  },
                  child: Container(
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
                      "Experience",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
