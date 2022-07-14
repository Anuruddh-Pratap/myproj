// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CalorieIntake extends StatefulWidget {
  const CalorieIntake({Key? key}) : super(key: key);

  @override
  State<CalorieIntake> createState() => _CalorieIntakeState();
}

class _CalorieIntakeState extends State<CalorieIntake> {
  // Helps to collect data from TextFields
  TextEditingController CurrentController = TextEditingController();
  TextEditingController FinalController = TextEditingController();
  TextEditingController termController = TextEditingController();
  String displayResult = "";
  bool isChecked = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "CalorieIntake Calaculator",
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
                  'https://c8.alamy.com/comp/2FKB3DW/kcal-icon-in-comic-style-diet-cartoon-vector-illustration-on-white-isolated-background-calories-splash-effect-business-concept-2FKB3DW.jpg'),
            )),
            SizedBox(
              height: 20,
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: CurrentController,
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: "Current Weight",
                  hintText: "Enter in Kg",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30))),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: FinalController,
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: "Target Weight",
                  hintText: "Enter in kg",
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
                              CurrentController.text = "";
                              FinalController.text = "";
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
    double Current = double.parse(CurrentController.text);
    double Final = double.parse(FinalController.text);
    // double term = double.parse(termController.text);

    double TotalCalorie =
        (Current * 2.45 * 15) + ((Final - Current) * 2.45 * 250);

    String result = 'Your Daily Calorie Goals are $TotalCalorie calories';
    return result;
  }
}
