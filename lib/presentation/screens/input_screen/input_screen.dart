import 'package:bmi_calculator/calculate_bmi.dart';
import 'package:bmi_calculator/presentation/screens/result_screen/restut_screen.dart';

import 'package:flutter/material.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({super.key});

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  int height = 150;
  int weight = 65;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calculate BMI"), centerTitle: true),
      backgroundColor: const Color.fromARGB(255, 1, 12, 31),
      body: Column(
        children: [
          // first container ........height..........
          Container(
            margin: EdgeInsets.all(30),
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
            width: double.infinity,
            color: const Color.fromARGB(255, 1, 11, 41),

            child: Column(
              children: [
                Text(
                  "HEIGHT",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
                Text(
                  "$height cm",
                  style: TextStyle(fontSize: 33, color: Colors.white),
                ),

                Slider(
                  activeColor: Colors.pink,
                  inactiveColor: const Color.fromARGB(255, 185, 178, 178),
                  min: 140,
                  max: 240,
                  value: height.toDouble(),
                  onChanged: (value) {
                    setState(() {
                      height = value.toInt();
                    });
                  },
                ),
              ],
            ),
          ),

          // second container ....weight...............
          Container(
            margin: EdgeInsets.only(top: 10, right: 55, left: 55),
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
            width: double.infinity,
            color: const Color.fromARGB(255, 1, 11, 41),

            height: 300,

            child: Column(
              children: [
                Text(
                  "Weight Kg",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
                Text(
                  "$weight Kg",
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
                SizedBox(height: 30),

                // minus button for substract value
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          weight--;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 95, 87, 87),
                          borderRadius: BorderRadius.all(Radius.circular(120)),
                        ),
                        height: 60,
                        width: 60,

                        child: Padding(
                          padding: EdgeInsets.only(bottom: 20),
                          child: Icon(
                            Icons.minimize_outlined,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                      ),
                    ),

                    // plus button for add value///////
                    InkWell(
                      onTap: () {
                        setState(() {
                          weight++;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 95, 87, 87),
                          borderRadius: BorderRadius.all(Radius.circular(120)),
                        ),
                        height: 60,
                        width: 60,

                        child: Padding(
                          padding: EdgeInsets.only(bottom: 0),
                          child: Icon(
                            Icons.add_outlined,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(child: SizedBox()),

          InkWell(
            onTap: () {
              Calculate calculate = Calculate(
                height: height.toDouble(),
                weight: weight.toDouble(),
              );
              calculate.bmi();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultScreen(
                    bmi: calculate.mybmi,
                    status: calculate.status(),
                    description: calculate.description(),
                  ),
                ),
              );
            },
            child: Container(
              alignment: Alignment.center,
              height: 50,
              width: double.infinity,
              color: Colors.pink,
              child: Text(
                "Calculate",
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
