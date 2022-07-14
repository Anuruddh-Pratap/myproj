import 'package:flutter/material.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Help"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(20),
              child: Text(
                "The user manual that is provided by Blesta provides with a very good documentation that is indeed very simple and easy to understand. There is a separate guide that is prepared for the Users as well as Developers. As there are lots of sections that are present under a single topic, so towards the bottom it gives you the option to Show More. For each of the topic, it gives the details of the writer along with lastly the particular document was modified. There is a Navigate space that is present towards the right where one can search the topic that one is looking for. There are also breadcrumbs that are provided for each of the page that helps the user for the easy navigation. There is a tree like structure that is provided by this document.",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
