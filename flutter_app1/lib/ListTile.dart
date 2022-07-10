import 'package:flutter/material.dart';

class ListTile extends StatelessWidget {
  String? title;
  String? des;
  ListTile({Key? key, this.title, this.des}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title!),
      ),
      body: Center(
        child: Text(
          title!,
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
