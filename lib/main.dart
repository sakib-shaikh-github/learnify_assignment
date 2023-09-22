import 'package:flutter/material.dart';
import 'package:learnify_assignment/features/authentication/presentation/mobile_verification_sc.dart';
import 'package:learnify_assignment/themes/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of the Learnify Technologies Private Limited application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learnify',
      theme: AppTheme.defaultTheme(),
      home: const MobileVerificationScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
