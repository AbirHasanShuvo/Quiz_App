import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Container_Access extends StatelessWidget{
  const Container_Access(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build (context) {
    return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
             Opacity(
              opacity: 0.7,
              //this opacity widget makes that image or anything transparent
              //but this opacity can reduce your apps performance, so avoiding it better
              child: Image.asset(
                'images/quiz-logo.png',
                width: 250,
                //you should use color here rather than opacity
              ),
            ),

            const SizedBox(
              height: 80,
            ),
            const Text(
              'Test your knowledge then !',
              style: TextStyle(color: Colors.white, fontSize: 19),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton.icon(
              icon: const Icon(Icons.arrow_circle_right),
              label: const Text(
                'Start Quiz',
              ),
              onPressed: startQuiz,
            ),

          ],
        ),

    );
  }

}