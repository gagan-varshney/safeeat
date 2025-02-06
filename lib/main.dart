// lib/main.dart
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:safeeat/screens/splash_screen.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const SafeEatApp());
}

class SafeEatApp extends StatelessWidget {
  const SafeEatApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SafeEat',
      theme: ThemeData(
        primaryColor: const Color(0xFF40E0D0),
        scaffoldBackgroundColor: const Color(0xFF40E0D0),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF40E0D0)),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF40E0D0),
            foregroundColor: Colors.white,
          ),
        ),
      ),
      home: const SplashScreen(), // Start with the login screen
    );
  }
}
