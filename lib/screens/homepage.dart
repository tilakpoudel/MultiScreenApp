import 'package:flutter/material.dart';
import '../data/ms_shortcut_data.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print(data);
    return Scaffold(
      appBar: AppBar(
        // centerTitle: true,
        title: Text("MS Word ShortCuts"),
        leading: Icon(
          Icons.menu,
          size: 35.0,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Icon(
              Icons.info,
              size: 35.0,
            ),
          ),
        ],
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) {
          return Divider(
            thickness: 2.0,
          );
        },
        itemCount: data.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              radius: 23.0,
              backgroundColor: Colors.tealAccent,
              child: Text(
                "${index + 1}",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
            ),
            title: Text(data[index]["key"]),
            subtitle: Text(data[index]["use"]),
          );
        },
      ),
    );
  }
}
