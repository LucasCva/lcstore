import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text("Home",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 22))),
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        shadowColor: Colors.transparent,
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),

            //barra de pesquisa
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25)),
                  hintText: "Search",
                  prefixIcon: const Icon(Icons.search),
                ),
              ),
            ),

            const SizedBox(
              height: 20,
            ),
            //container com alguma promoção
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                height: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(176, 0, 0, 0)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //imagem
                    Image.asset(
                      'lib/imagens/imagemTenis.png',
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                      height: 110,
                      width: 130,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(90, 0, 0, 0),
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Text(
                          "50% \n OFF",
                          style: GoogleFonts.ptSans(
                              textStyle: const TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromARGB(255, 255, 255, 255))),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(
              height: 40,
            ),

            //'barra' de categorias

            Row(
              children: [
                Row(
                  children: [],
                )
              ],
            )

            //texto escrito populares

            //itens populares
          ],
        ),
      ),
    );
  }
}
