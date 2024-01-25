import 'package:flutter/material.dart';
class QuestionDetailsPage extends StatelessWidget {
  final String question;
  final List<String> answers;
  final int correctAnswer;
  final String explanation;

  QuestionDetailsPage({
    required this.question,
    required this.answers,
    required this.correctAnswer,
    required this.explanation,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question Details'),
      ),
      body: SingleChildScrollView( // Add SingleChildScrollView here
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                question,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: answers.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(
                    index == correctAnswer ? Icons.check_circle : Icons.close,
                    color: index == correctAnswer ? Colors.green : Colors.red,
                  ),
                  title: Text(answers[index]),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                explanation,
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}