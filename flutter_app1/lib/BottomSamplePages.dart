// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_app1/Calculator.dart';

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
                      "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/7ad2af83-e54b-4e5e-add4-cd1602376da2/deglf7g-55887cee-c5f5-45e7-997f-5a7156bf9c77.png/v1/fill/w_748,h_1068,q_70,strp/dark_theme_wallpaper_by_kontu06_deglf7g-pre.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTQ0NSIsInBhdGgiOiJcL2ZcLzdhZDJhZjgzLWU1NGItNGU1ZS1hZGQ0LWNkMTYwMjM3NmRhMlwvZGVnbGY3Zy01NTg4N2NlZS1jNWY1LTQ1ZTctOTk3Zi01YTcxNTZiZjljNzcucG5nIiwid2lkdGgiOiI8PTEwMTMifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.-LPCiOyOEp5uh1399i44PC87sxuf7187BA-n2vloAso"),
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
                                  "data:image/jpeg;base64,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"),
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
                        width: 200,
                        height: 200,
                        child: ListTile(
                          //leading: Icon(Icons.help_center_rounded),
                          title: Image(
                              image: NetworkImage(
                                  "data:image/jpeg;base64,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")),
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
                        width: 200,
                        height: 200,
                        child: ListTile(
                          //leading: Icon(Icons.remove_circle_outline_sharp),
                          title: Image(
                              image: NetworkImage(
                                  "data:image/jpeg;base64,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")),
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
                        width: 200,
                        height: 200,
                        child: ListTile(
                          //leading: Icon(Icons.help_center_rounded),
                          title: Image(
                              image: NetworkImage(
                                  "data:image/png;base64,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")),
                          subtitle: Text("BMI",
                              style: TextStyle(color: Colors.white)),
                          trailing: Icon(
                            Icons.arrow_forward_ios_sharp,
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
                        width: 200,
                        height: 200,
                        child: ListTile(
                          //leading: Icon(Icons.remove_circle_outline_sharp),
                          title: Image(
                              image: NetworkImage(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRemIibIhCJpsSyMIuNyUDoh2v9uyEnQsH_Yw&usqp=CAU")),
                          subtitle: Text("Calorie Intake",
                              style: TextStyle(color: Colors.white)),
                          trailing: Icon(
                            Icons.arrow_forward_ios_sharp,
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
                  SafeArea(
                    child: Container(
                      height: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSY_BBZuFub2JpQbeanvt6CugUO6V-QsJodMQ&usqp=CAU"),
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
