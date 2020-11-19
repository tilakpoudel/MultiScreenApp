import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Us"),
      ),
      body: Column(
        children: [
          Card(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "This app is for MS word users to get shortcut keys.... Feel easy to use it,.............",
                style: TextStyle(fontSize: 18.0),
              ),
            ),
          ),
          RaisedButton(
            color: Colors.tealAccent,
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              "Go Back",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
