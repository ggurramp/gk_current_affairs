import 'package:flutter/material.dart';

class ExplanationPage extends StatefulWidget {
  final String explanation;

  ExplanationPage({required this.explanation});

  @override
  _ExplanationPageState createState() => _ExplanationPageState();
}

class _ExplanationPageState extends State<ExplanationPage> {
  bool isLiked = false;

  void toggleLiked() {
    setState(() {
      isLiked = !isLiked;
    });
  }

  void saveLikedQuestion() {
    // Add your logic to save the liked question here
    if (isLiked) {
      // Show a snackbar as feedback
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Question saved as liked!'),
          duration: Duration(seconds: 2),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Explanation'),
        // actions: [
        //     IconButton(
        //       icon: Icon(Icons.save_alt), // Saved icon
        //       onPressed: () {
        //         // Handle the action when the saved icon is pressed
        //         // You can add logic to remove it from saved questions if needed
        //       },
        //     ),
        // ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                widget.explanation,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 20), // Add some spacing between text and icons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // IconButton(
                  //   icon: isLiked ? Icon(Icons.thumb_up) : Icon(Icons.thumb_up_alt_outlined),
                  //   // Toggle the like icon based on the current state
                  //   onPressed: toggleLiked,
                  // ),
                  // IconButton(
                  //   icon: Icon(Icons.save), // Save icon
                  //   onPressed: saveLikedQuestion,
                  // ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

