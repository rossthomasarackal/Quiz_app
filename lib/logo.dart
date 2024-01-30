import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogoImage extends StatelessWidget {
  const LogoImage(this.startQuiz, {super.key});
  final void Function() startQuiz;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(200, 250, 50, 150),
            Color.fromARGB(255, 15, 50, 100)
          ],
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/quiz_logo.png',
              width: 250,
              color: const Color.fromARGB(160, 72, 6, 72),
            ),
            const SizedBox(height: 100),
             Text(
              'Learn Flutter in Fun Way',
              style: GoogleFonts.ptSerif(
                    color: Colors.white60,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
              ),

            const SizedBox(height: 40),
            OutlinedButton.icon(
              onPressed: (){
                startQuiz();
              },
              icon: const Icon(
                Icons.arrow_right_alt,
                color: Colors.white,
              ),
              style: TextButton.styleFrom(
                foregroundColor: Colors.pink,
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              ),
              label: const Text(
                ' Start Quiz ',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontStyle: FontStyle.italic),
              ),
            ),
        ]
        ),
      )
    );
  }
}
