import 'package:flutter/material.dart';
import 'package:quiz_app/home/widgets/answer.dart';
import 'package:quiz_app/home/widgets/question.dart';

class Quiz extends StatelessWidget {
  const Quiz({
    super.key,
    required this.questions,
    required this.answerQuestion,
    required this.questionIndex,
  });
  final List<Map<String, dynamic>> questions;
  final int questionIndex;
  final void Function(int) answerQuestion;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questionText: questions[questionIndex]['questionText']! as String,
        ),
        ...(questions[questionIndex]['answers']! as List<Map<String, dynamic>>)
            .map((answer) {
          return Answer(
            selectHandler: () {
              answerQuestion(answer['score']! as int);
            },
            answerText: answer['text']! as String,
          );
        }).toList()
      ],
    );
  }
}
