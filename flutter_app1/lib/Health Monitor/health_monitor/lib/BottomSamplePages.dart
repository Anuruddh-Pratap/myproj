// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:health_monitor/Calculator.dart';
import 'package:health_monitor/CalorieIntake.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 249, 251, 252),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQIrGLA8JJqGuiWStj9r7Xkw3UrMgo7tpnUhQ&usqp=CAU'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.1), BlendMode.darken))),
          child: ListView(children: [
            Center(
              child: Column(
                children: [
                  SafeArea(
                    child: Container(
                      height: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: NetworkImage(
                                  "images/x1bg-circles-purple-dark.jpg"),
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                  Colors.black.withOpacity(0.1),
                                  BlendMode.darken))),
                      margin: EdgeInsets.only(top: 40, right: 10, left: 10),
                      // color: Color.fromARGB(255, 83, 23, 173),
                      child: ListTile(
                        // leading: Icon(Icons.help_center_rounded),
                        title: Text(
                          "Healthy Body Leads To A Healthy Mind",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        subtitle: Text(
                          "A Summer Surpise Awaits You",
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 180,
                        height: 120,
                        child: ListTile(
                          //leading: Icon(Icons.help_center_rounded),
                          // title: Image(image: AssetImage("images/Step.png")),
                          // subtitle: Text("STEPS",
                          //     style: TextStyle(color: Colors.white)),
                          title: Image(image: AssetImage("images/Step.png")),
                          subtitle: Text(
                            "STEPS",
                            style: TextStyle(color: Colors.white),
                          ),
                          trailing: Icon(
                            Icons.add_box_rounded,
                            color: Colors.white,
                          ),
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: ((context) => (HelpScreen()))));
                          },
                        ),
                      ),
                      Container(
                        width: 180,
                        height: 120,
                        child: ListTile(
                          //leading: Icon(Icons.remove_circle_outline_sharp),
                          title: Image(
                            image: AssetImage("images/Water.png"),
                          ),
                          subtitle: Text("WATER INTAKE",
                              style: TextStyle(color: Colors.white)),
                          trailing: Icon(
                            Icons.add_box_rounded,
                            color: Colors.white,
                          ),
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: ((context) => (HelpScreen()))));
                          },
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 180,
                        height: 160,
                        child: ListTile(
                          //leading: Icon(Icons.help_center_rounded),
                          title: Image(image: AssetImage("images/BMI.png")),
                          subtitle: Text("BMI",
                              style: TextStyle(color: Colors.white)),
                          trailing: Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.white,
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => (Calculator()))));
                          },
                        ),
                      ),
                      Container(
                        width: 180,
                        height: 160,
                        child: ListTile(
                          //leading: Icon(Icons.remove_circle_outline_sharp),
                          title: Image(
                              image: NetworkImage("assets/images/Calorie.png")),
                          subtitle: Text("Calorie Intake",
                              style: TextStyle(color: Colors.white)),
                          trailing: Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.white,
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => (CalorieIntake()))));
                          },
                        ),
                      ),
                    ],
                  ),
                  SafeArea(
                    child: Container(
                      height: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGHKbJUNsbnBxo_h1fVac6SQqntqm2jBpP7Q&usqp=CAU"),
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                  Colors.black.withOpacity(0.2),
                                  BlendMode.darken))),
                      margin: EdgeInsets.only(bottom: 40, left: 10, right: 10),
                      // color: Color.fromARGB(255, 83, 23, 173),
                      child: ListTile(
                        // leading: Icon(Icons.help_center_rounded),
                        title: Text(
                          "`Time and Health are two precious assests that we don't recognise and appreciate until they have been depleted`",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontStyle: FontStyle.italic),
                        ),

                        subtitle: Text(
                          "Denis Waitley",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ));
  }
}

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Just Nothing"),
      ),
      body: Center(
        child: Text(
          "About Page",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

class ServicePage extends StatelessWidget {
  const ServicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Service Page",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
