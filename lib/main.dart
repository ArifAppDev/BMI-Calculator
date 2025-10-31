import 'package:bmi_calculator/presentation/screens/input_screen/input_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InputScreen(),

      theme: ThemeData(
        appBarTheme: AppBarTheme(
          titleTextStyle: TextStyle(fontSize: 20, color: Colors.white),
          elevation: 0,
          backgroundColor: const Color.fromARGB(255, 1, 11, 41),

          iconTheme: IconThemeData(color: Colors.white),
        ),
      ),
    );
  }
}
