// ignore_for_file: prefer_const_constructors

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
        backgroundColor: Colors.black,
        title: const Text(
          "BMI Calculator",
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://images.pexels.com/photos/3934623/pexels-photo-3934623.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.1), BlendMode.darken))),
        // margin: EdgeInsets.all(10.0),
        child: ListView(
          children: [
            Center(
                child: CircleAvatar(
              radius: 120, // Image radius
              backgroundImage: NetworkImage(
                  'https://previews.123rf.com/images/jemastock/jemastock1812/jemastock181207825/126986298-fit-man-doing-exercise-cartoon-vector-illustration-graphic-design.jpg'),
            )),
            SizedBox(
              height: 20,
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: principalController,
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: "Mass",
                  hintText: "Enter in Kg",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30))),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: rateController,
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: "Height",
                  hintText: "Enter in meters",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30))),
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
                    color: Colors.black,
                    margin: EdgeInsets.only(left: 50, right: 50, bottom: 5),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32.0)),
                          primary: Color.fromARGB(255, 67, 12, 155),
                        ),
                        onPressed: () {
                          setState(() {
                            displayResult = _calculateResult();
                          });
                        },
                        child: Text(
                          "Calculate",
                          style: TextStyle(
                            fontSize: 15,
                          ),
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
                  child: Container(
                    margin: EdgeInsets.only(left: 50, right: 50, bottom: 10),
                    child: Expanded(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32.0)),
                            primary: Color.fromARGB(255, 67, 12, 155),
                          ),
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
                            style: TextStyle(fontSize: 15),
                          )),
                    ),
                  ),
                ),
              ],
            ),
            Center(
              child: Text(
                displayResult,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
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
