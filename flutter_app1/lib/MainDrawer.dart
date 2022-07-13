import 'package:flutter/material.dart';
import 'package:flutter_app1/About.dart';
import 'package:flutter_app1/Developer.dart';
import 'package:flutter_app1/HelpScreen.dart';
import 'package:flutter_app1/contact.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // backgroundColor: Color.fromARGB(255, 227, 93, 93),
      child: Column(
        children: [
          Image(
            image: NetworkImage(
                'data:image/jpeg;base64,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'),
            width: double.infinity,
            height: 300,
          ),
          ListTile(
            leading: Icon(Icons.help_center_rounded),
            title: Text("Help"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => (HelpScreen()))));
            },
          ),
          ListTile(
              leading: Icon(Icons.info_outline_rounded),
              title: Text("About"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => (About()))));
              }),
          // ListTile(
          //   leading: Icon(Icons.account_circle_sharp),
          //   title: Text("Developer"),
          //   trailing: Icon(Icons.arrow_forward_ios),
          //   onTap: () {
          //     Navigator.push(context,
          //         MaterialPageRoute(builder: ((context) => (Developer()))));
          //   },
          // ),
          ListTile(
            leading: Icon(Icons.contacts_sharp),
            title: Text("Contact"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => (contact()))));
            },
          ),
        ],
      ),
    );
  }
}
