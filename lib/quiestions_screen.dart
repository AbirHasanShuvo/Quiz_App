import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:advances_basics_renew/answer_button.dart';
import 'package:advances_basics_renew/questions.dart';
import 'package:advances_basics_renew/quiz_questions_model.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreen();
  }


}

class _QuestionScreen extends State<QuestionScreen> {

  var currentQuestionsIndex = 0;

  void answerQustions()
  {
    setState(() {
      if(currentQuestionsIndex != 5)
        {
          currentQuestionsIndex++;
        }

    });

  }

  //if we tap button this function will change the question with answer

  @override
  Widget build(context) {

    final currentQuestions = questions[currentQuestionsIndex];

    return SizedBox(
      width: double.infinity,
      //this double.infinity take all the width just like match parent in android layout

      child: Container(
        
        margin: EdgeInsets.all(20),
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          //stretch meant it will take the full width for crossAxis, stretch in  mainAxis means full height for mainAxis
          

          children: [
            Text(currentQuestions.text, textAlign: TextAlign.center ,
                style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold
                ),
            ),
            const SizedBox(
              height: 30,
            ),

            ...currentQuestions.getShuffledAnswered().map((answer) {
              return AnswerButton(answerText: answer, onTap: answerQustions);


              //perfect work...dynamically allocate all answer from list to button
              //we can use this as a listview or recyclerview

              //we will shuffle here rather than answer, cause shuffle gives randomly generated answer list rather than fixed

              
            })
          ],
        ),
      ),
    );
  }
}
