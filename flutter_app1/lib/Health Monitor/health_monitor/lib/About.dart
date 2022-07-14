import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About"),
      ),
      // ignore: prefer_const_constructors
      body: Container(
        margin: EdgeInsets.all(20),
        child: Text(
            "Having a fit and healthy body is everyone's dream, but it has somehow not been everyone's cup of tea, Lack of motivation and guidance bars people from achieving their health goals. Health Monitor app was designed to solve this very problem. HealthifyMe app allows the users to keep track of their diet and exercise regime, take expert advice and connect to other fitness enthusiasts thus equipping them to maintain a healthy lifestyle. The HealthifyMe plans offer its customers and fitness enthusiasts many premium options that can help them reach their goals."),
      ),
    );
  }
}
