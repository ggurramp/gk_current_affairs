import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FavoriteQuestionsScreen extends StatelessWidget {
  final List<String> favoriteQuestions;
  final List<String> explanations;

  FavoriteQuestionsScreen({required this.favoriteQuestions, required this.explanations});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite Questions'),
      ),
      body: ListView.builder(
        itemCount: favoriteQuestions.length,
        itemBuilder: (context, index) {
          return ExpansionTile(
            title: Text('Question: ${favoriteQuestions[index]}'),
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Explanation: ${explanations[index]}',
                  maxLines: 100, // Display only one line initially
                  overflow: TextOverflow.ellipsis, // Show ellipsis (...) for overflowed text
                ),
              ),
              // ElevatedButton(
              //   onPressed: () {
              //     // Implement logic to show complete explanation when the "More" button is clicked
              //     // You can use a dialog or navigate to a new page to display the complete explanation.
              //     // For example:
              //     _showCompleteExplanation(context, explanations[index]);
              //   },
              //   child: Text('More'),
              // ),
            ],
          );
        },
      ),
    );
  }

  void _showCompleteExplanation(BuildContext context, String explanation) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          insetPadding: EdgeInsets.zero, // Set insetPadding to zero for full-screen effect
          child: Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  AppBar(
                    title: Text('Complete Explanation'),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(explanation),
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: IconButton(
                    icon: Icon(Icons.close,color: Colors.red),
                    onPressed: () {
                      Navigator.pop(context); // Close the dialog
                    },
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }



}
