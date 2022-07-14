import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:health_monitor/About.dart';
import 'package:health_monitor/Contact.dart';
import 'package:health_monitor/HelpScreen.dart';

class ProfilePage extends StatefulWidget {
  @override
  MapScreenState createState() => MapScreenState();
}

class MapScreenState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  bool _status = true;
  final FocusNode myFocusNode = FocusNode();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Container(
      color: Colors.black,
      child: new ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              new Container(
                color: Color.fromARGB(255, 194, 72, 72),
                height: 250.0,
                // color: Colors.white,
                child: new Column(
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(left: 20.0, top: 20.0),
                        child: new Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(left: 25.0),
                              child: new Text('PROFILE',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0,
                                      fontFamily: 'sans-serif-light',
                                      color: Colors.black)),
                            )
                          ],
                        )),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: new Stack(fit: StackFit.loose, children: <Widget>[
                        new Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Container(
                                width: 140.0,
                                height: 140.0,
                                decoration: new BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: new DecorationImage(
                                    image: new NetworkImage(
                                        'data:image/png;base64,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'),
                                    fit: BoxFit.cover,
                                  ),
                                )),
                          ],
                        ),
                        Padding(
                            padding: EdgeInsets.only(top: 90.0, right: 100.0),
                            child: new Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                new CircleAvatar(
                                  backgroundColor: Colors.red,
                                  radius: 25.0,
                                  child: new Icon(
                                    Icons.camera_alt,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            )),
                      ]),
                    )
                  ],
                ),
              ),
              new Container(
                color: Color(0xffFFFFFF),
                child: Padding(
                  padding: EdgeInsets.only(bottom: 25.0),
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                          padding: EdgeInsets.only(
                              left: 25.0, right: 25.0, top: 25.0),
                          child: new Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              new Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  new Text(
                                    'Parsonal Information',
                                    style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              new Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  _status ? _getEditIcon() : new Container(),
                                ],
                              )
                            ],
                          )),
                      Padding(
                          padding: EdgeInsets.only(
                              left: 25.0, right: 25.0, top: 25.0),
                          child: new Row(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              new Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  new Text(
                                    'Name',
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          )),
                      Padding(
                          padding: EdgeInsets.only(
                              left: 25.0, right: 25.0, top: 2.0),
                          child: new Row(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              new Flexible(
                                child: new TextField(
                                  decoration: const InputDecoration(
                                    hintText: "Enter Your Name",
                                  ),
                                  enabled: !_status,
                                  autofocus: !_status,
                                ),
                              ),
                            ],
                          )),
                      Padding(
                          padding: EdgeInsets.only(
                              left: 25.0, right: 25.0, top: 25.0),
                          child: new Row(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              new Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  new Text(
                                    'Email ID',
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          )),
                      Padding(
                          padding: EdgeInsets.only(
                              left: 25.0, right: 25.0, top: 2.0),
                          child: new Row(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              new Flexible(
                                child: new TextField(
                                  decoration: const InputDecoration(
                                      hintText: "Enter Email ID"),
                                  enabled: !_status,
                                ),
                              ),
                            ],
                          )),
                      Padding(
                          padding: EdgeInsets.only(
                              left: 25.0, right: 25.0, top: 25.0),
                          child: new Row(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              new Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  new Text(
                                    'Mobile',
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          )),
                      Padding(
                          padding: EdgeInsets.only(
                              left: 25.0, right: 25.0, top: 2.0),
                          child: new Row(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              new Flexible(
                                child: new TextField(
                                  decoration: const InputDecoration(
                                      hintText: "Enter Mobile Number"),
                                  enabled: !_status,
                                ),
                              ),
                            ],
                          )),
                      Padding(
                          padding: EdgeInsets.only(
                              left: 25.0, right: 25.0, top: 25.0),
                          child: new Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                  child: new Text(
                                    'Pin Code',
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                flex: 2,
                              ),
                              Expanded(
                                child: Container(
                                  child: new Text(
                                    'State',
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                flex: 2,
                              ),
                            ],
                          )),
                      Padding(
                          padding: EdgeInsets.only(
                              left: 25.0, right: 25.0, top: 2.0),
                          child: new Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Flexible(
                                child: Padding(
                                  padding: EdgeInsets.only(right: 10.0),
                                  child: new TextField(
                                    decoration: const InputDecoration(
                                        hintText: "Enter Pin Code"),
                                    enabled: !_status,
                                  ),
                                ),
                                flex: 2,
                              ),
                              Flexible(
                                child: new TextField(
                                  decoration: const InputDecoration(
                                      hintText: "Enter State"),
                                  enabled: !_status,
                                ),
                                flex: 2,
                              ),
                            ],
                          )),
                      !_status ? _getActionButtons() : new Container(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    ));
  }

  @override
  void dispose() {
    // Clean up the controller when the Widget is disposed
    myFocusNode.dispose();
    super.dispose();
  }

  Widget _getActionButtons() {
    return Padding(
      padding: EdgeInsets.only(left: 25.0, right: 25.0, top: 45.0),
      child: new Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: Container(
                  child: new RaisedButton(
                child: new Text("Save"),
                textColor: Colors.white,
                color: Colors.green,
                onPressed: () {
                  setState(() {
                    _status = true;
                    FocusScope.of(context).requestFocus(new FocusNode());
                  });
                },
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(20.0)),
              )),
            ),
            flex: 2,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Container(
                  child: new RaisedButton(
                child: new Text("Cancel"),
                textColor: Colors.white,
                color: Colors.red,
                onPressed: () {
                  setState(() {
                    _status = true;
                    FocusScope.of(context).requestFocus(new FocusNode());
                  });
                },
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(20.0)),
              )),
            ),
            flex: 2,
          ),
        ],
      ),
    );
  }

  Widget _getEditIcon() {
    return new GestureDetector(
      child: new CircleAvatar(
        backgroundColor: Colors.red,
        radius: 14.0,
        child: new Icon(
          Icons.edit,
          color: Colors.white,
          size: 16.0,
        ),
      ),
      onTap: () {
        setState(() {
          _status = false;
        });
      },
    );
  }
}
