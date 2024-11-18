import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart'; // Import Firebase Core
import 'splash_screen.dart';
import 'login_screen.dart';
import 'registration_screen.dart';
import 'home_screen.dart';
import 'chat_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Ensure bindings are initialized
  await Firebase.initializeApp(); // Initialize Firebase
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Message Board App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),    // Splash Screen
        '/login': (context) => LoginScreen(), // Login Screen
        '/register': (context) => RegisterScreen(), // Registration Screen
        '/home': (context) => HomeScreen(),  // Home Screen
        '/chat': (context) => ChatScreen(),  // Chat Screen
      },
    );
  }
}
