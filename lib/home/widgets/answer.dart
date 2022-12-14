import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  const Answer({
    required this.selectHandler,
    required this.answerText,
    super.key,
  });
  final VoidCallback selectHandler;
  final String answerText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: selectHandler,
        child: Text(answerText),
      ),
    );
  }
}
