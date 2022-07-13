import 'package:flutter/material.dart';

class contact extends StatelessWidget {
  const contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact"),
      ),
      body: Center(
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.contacts_sharp),
              title: Text("Anuruddh Pratap Tamrakar"),
              subtitle: Text("App Developer"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: Icon(Icons.contacts_sharp),
              title: Text("Samrath Srivastava"),
              subtitle: Text("App Developer"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: Icon(Icons.contacts_sharp),
              title: Text("Akshat Maan Singh"),
              subtitle: Text("App Developer"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: Icon(Icons.contacts_sharp),
              title: Text("Anurag Mishra"),
              subtitle: Text("App Developer"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: Icon(Icons.contacts_sharp),
              title: Text("Aryan Khandelwal"),
              subtitle: Text("App Developer"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: Icon(Icons.contacts_sharp),
              title: Text("Kshitiz Maurya"),
              subtitle: Text("App Developer"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: Icon(Icons.contacts_sharp),
              title: Text("Dev Kumar Rai"),
              subtitle: Text("App Developer"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ],
        ),
      ),
    );
  }
}
