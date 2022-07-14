// ignore_for_file: prefer_const_constructors, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:health_monitor/Calculator.dart';
import 'package:health_monitor/CalorieIntake.dart';
import 'package:health_monitor/ProfilePage.dart';
import 'BottomSamplePages.dart';
import 'MainDrawer.dart';
import 'BottomNAvigationBar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedItem = 0;
  var _pages = [
    HomePage(),
    Calculator(),
    CalorieIntake(),
    ProfilePage(),
    ServicePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            drawer: MainDrawer(),
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              title: Text("Health Monitor"),
              actions: [
                IconButton(
                    onPressed: () {
                      displayBottomSheet(context);
                    },
                    icon: Icon(Icons.share)),
              ],
              backgroundColor: Colors.black.withOpacity(0.1),
              elevation: 0,
            ),
            body: Center(
              child: Container(
                child: _pages[_selectedItem],
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.calculate_rounded), label: "BMI Calc"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.calculate_rounded),
                    label: "Calorie Intake Calc"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.account_box_rounded), label: "My Profile"),

                // BottomNavigationBarItem(
                //     icon: Icon(Icons.design_services), label: "Services"),
                // BottomNavigationBarItem(
                //     icon: Icon(Icons.design_services), label: "Services"),
              ],
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.transparent.withOpacity(0.1),
              elevation: 0,
              unselectedItemColor: Colors.grey,
              fixedColor: Colors.black,
              currentIndex: _selectedItem,
              onTap: (setValue) {
                setState(() {
                  _selectedItem = setValue;
                });
              },
            )));
  }

  void displayBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Wrap(
            children: [
              Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  ListTile(
                    leading: Image(
                      image: NetworkImage(
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6b/WhatsApp.svg/1022px-WhatsApp.svg.png',
                      ),
                      height: 40,
                    ),
                    title: Text("WhatsApp"),
                  ),
                  Divider(
                    height: 20,
                  ),
                  ListTile(
                    leading: Image(
                      image: NetworkImage(
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Instagram_icon.png/640px-Instagram_icon.png',
                      ),
                      height: 40,
                    ),
                    title: Text("Instagram"),
                  ),
                  Divider(
                    height: 20,
                  ),
                  ListTile(
                    leading: Image(
                      image: NetworkImage(
                        'data:image/png;base64,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',
                      ),
                      height: 40,
                    ),
                    title: Text("Snapchat"),
                  ),
                  Divider(
                    height: 20,
                  ),
                  ListTile(
                    leading: Image(
                      image: NetworkImage(
                        'data:image/png;base64,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',
                      ),
                      height: 40,
                    ),
                    title: Text("Telegram"),
                  ),
                ],
              )
            ],
          );
        });
  }
}
