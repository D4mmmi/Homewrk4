import 'package:flutter/material.dart';
import 'dart:async';  // For the delayed navigation

// SplashScreen widget
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  // Set up a timer to navigate after a few seconds
  @override
  void initState() {
    super.initState();
    _navigateToNextScreen();
  }

  // Function to navigate to the next screen after a delay
  _navigateToNextScreen() {
    Timer(const Duration(seconds: 3), () {
      // Navigate to the next screen (login or home page)
      Navigator.pushReplacementNamed(context, '/login');  // Replace '/login' with the correct route
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,  // Background color for the splash screen
      body: Center(
        child: Image.network(
          'https://cdn.dribbble.com/users/181873/screenshots/6430356/mcdonalds_wendys-1_2x.png',  // Replace with your image URL
          width: 200,  // Adjust the size as needed
          height: 200,  // Adjust the size as needed
          loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress == null) return child;  // No progress, just show image
            return Center(
              child: CircularProgressIndicator(  // Show loading spinner while image is loading
                value: loadingProgress.expectedTotalBytes != null
                    ? loadingProgress.cumulativeBytesLoaded /
                        (loadingProgress.expectedTotalBytes ?? 1)
                    : null,
              ),
            );
          },
        ),
      ),
    );
  }
}
