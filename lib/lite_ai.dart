// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:lite_ai/src/presentation/screen/home/home_screen.dart';

class LiteAi extends StatelessWidget {
  const LiteAi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.grey.shade900,
      ),
      home: const HomeScreen(),
    );
  }
}