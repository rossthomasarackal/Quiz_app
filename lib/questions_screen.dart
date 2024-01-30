import 'package:flutter/material.dart';
import 'package:first_page/back_ground.dart';
import 'package:first_page/answer_button.dart';
import 'package:first_page/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
 const QuestionsScreen({super.key, required this.onSelectAnswer });
  final void Function(String answer) onSelectAnswer ;
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex= 0;
  void answerQuestion(selectedAnswer){
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      currentQuestionIndex++;
    });
  }
  @override
  Widget build(context) {
    final currentQuestion= questions[currentQuestionIndex];
    return Stack(
      children: [
        const GradientWidget(
          Color.fromARGB(200, 250, 50, 150),
          Color.fromARGB(255, 15, 50, 100),
        ),
        Center(
          child: SizedBox(
            width: double.infinity, height: double.maxFinite ,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                 Padding(
                   padding: const EdgeInsets.only(left: 10),
                   child: Text(
                     currentQuestion.text,
                    style:  GoogleFonts.ptSerif(
                        color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold
                    ),
                     textAlign: TextAlign.center,
                ),
                 ),
                const SizedBox(height:70),
                ...currentQuestion.getShuffledAnswers().map((answer){
                  return Container( margin: const EdgeInsets.symmetric(vertical: 10, horizontal:220) ,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        AnswerButton(answerText: answer, onTap:(){ answerQuestion(answer);} ),
                        const SizedBox(
                          height:5,
                        ),
                      ],
                    ),
                  );
                }),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
