// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  // Helps to collect data from TextFields
  TextEditingController principalController = TextEditingController();
  TextEditingController rateController = TextEditingController();
  TextEditingController termController = TextEditingController();
  String displayResult = "";
  bool isChecked = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          "BMI Calculator",
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: ListView(
          children: [
            Center(
              child: Image(
                image: NetworkImage(
                    'data:image/jpeg;base64,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'),
                width: 300,
                height: 300,
              ),
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: principalController,
              decoration: InputDecoration(
                  labelText: "Mass",
                  hintText: "Enter in Kg",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: rateController,
              decoration: InputDecoration(
                  labelText: "Height",
                  hintText: "Enter in meters",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            SizedBox(
              height: 10,
            ),
            // TextField(
            //   keyboardType: TextInputType.number,
            //   controller: termController,
            //   decoration: InputDecoration(
            //       labelText: "Term",
            //       hintText: "Enter Term",
            //       border: OutlineInputBorder(
            //           borderRadius: BorderRadius.circular(10))),
            // ),
            SizedBox(
              height: 10,
            ),
            // Row(
            //   children: [
            //     Checkbox(
            //         value: isChecked,
            //         onChanged: (b) {
            //           setState(() {
            //             isChecked = b!;
            //           });
            //         }),
            //     Text("Are you agree with Terms")
            //   ],
            // ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(5),
                    child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            displayResult = _calculateResult();
                          });
                        },
                        child: Text(
                          "Calculate",
                          style: TextStyle(fontSize: 20),
                        )),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          principalController.text = "";
                          rateController.text = "";
                          termController.text = "";
                          displayResult = "";
                          isChecked = false;
                        });
                      },
                      child: Text(
                        "Reset",
                        style: TextStyle(fontSize: 20),
                      )),
                ),
              ],
            ),
            Text(
              displayResult,
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }

  String _calculateResult() {
    double principal = double.parse(principalController.text);
    double rate = double.parse(rateController.text);
    // double term = double.parse(termController.text);

    double totalAmount = principal / (rate * rate);

    String result = 'Your BMI is $totalAmount';
    return result;
  }
}
