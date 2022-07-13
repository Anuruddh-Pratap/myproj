// ignore_for_file: prefer_const_constructors, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:flutter_app1/Calculator.dart';
import 'package:flutter_app1/ProfilePage.dart';
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
    ProfilePage(),
    AboutPage(),
    ServicePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            drawer: MainDrawer(),
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              title: Text("HealthyApp"),
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
                    icon: Icon(Icons.info_rounded), label: "BMI Calc"),
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
}
