import 'package:advances_basics_renew/container_class.dart';
import 'package:advances_basics_renew/quiestions_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _Quizstate();
  }
}

class _Quizstate extends State<Quiz> {
  Widget? activeScreen;

  //question mark means it can be null also

  @override
  void initState() {
    activeScreen = Container_Access(switchScreen);
    super.initState();

    //passing a method through it named switchScreen
  }

  //first of all which screen coming first

  void switchScreen() {
    setState(() {
      activeScreen = const QuestionScreen();
    });
  }

  //after clicking button which on the Container_Access class

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.lightBlueAccent, Colors.blueGrey],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight)),
      child: activeScreen,
    );
  }
}
