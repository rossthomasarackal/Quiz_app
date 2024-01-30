import 'package:first_page/data/questions.dart';
import 'package:first_page/questions_screen.dart';
import 'package:flutter/material.dart';
import 'package:first_page/logo.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;
  List<String> selectedAnswer=[];

  @override
  void initState() {
    super.initState();
    activeScreen = LogoImage(switchScreen);
  }
  void chooseAnswer(String answer) {
    selectedAnswer.add(answer);
    if (selectedAnswer.length == questions.length){
      setState(() {
        selectedAnswer=[];
        activeScreen= LogoImage(switchScreen);
      });
    }
  }
  void switchScreen() {
    setState(() {
      activeScreen = QuestionsScreen(onSelectAnswer: chooseAnswer);
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: activeScreen,
        ),
      ),
    );
  }
}
