import 'package:bmi_calculator/presentation/screens/input_screen/input_screen.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final double bmi;
  final String status;
  final String description;

  const ResultScreen({
    super.key,
    required this.status,
    required this.description,
    required this.bmi,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calculated Result")),

      backgroundColor: const Color.fromARGB(255, 1, 12, 31),

      body: Column(
        children: [
          SizedBox(height: 20),

          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Your result",
              style: TextStyle(fontSize: 31, color: Colors.white),
            ),
          ),

          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 20),
              width: double.infinity,
              color: const Color.fromARGB(255, 1, 11, 41),

              child: Column(
                children: [
                  SizedBox(height: 80),
                  Text(
                    status,
                    style: TextStyle(color: Colors.pink, fontSize: 35),
                  ),

                  SizedBox(height: 100),

                  Text(
                    bmi.toStringAsFixed(1),
                    style: TextStyle(color: Colors.white, fontSize: 55),
                  ),

                  SizedBox(height: 100),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Text(
                      description,
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),

                  Expanded(child: SizedBox()),

                  InkWell(
                    onTap: () {
                      Navigator.pop(
                        context,
                        MaterialPageRoute(builder: (context) => InputScreen()),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      alignment: Alignment.center,
                      height: 50,
                      width: double.infinity,
                      color: Colors.pink,
                      child: Text(
                        "ReCalculate",
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
