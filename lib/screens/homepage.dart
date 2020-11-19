import 'package:flutter/material.dart';
import './about_page.dart';
import '../data/ms_shortcut_data.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share/share.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // print(data);
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: Container(
                  color: Colors.tealAccent,
                  child: Center(
                    child: Text(
                      "MS Word Guide",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
              },
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return AboutPage();
                  }),
                );
              },
              leading: Icon(Icons.info),
              title: Text("About"),
            ),
            ListTile(
              onTap: () {
                launch(
                    "https://www.youtube.com/channel/UCLv3aKSgC-hFHlq14IXCIJw");
              },
              leading: Icon(Icons.star),
              title: Text("Rate"),
            ),
            ListTile(
              onTap: () {
                Share.share("You can download from playstore!");
              },
              leading: Icon(Icons.share),
              title: Text("Share"),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        // centerTitle: true,
        title: Text("MS Word ShortCuts"),
        actions: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: IconButton(
                icon: Icon(
                  Icons.info_outline,
                  size: 35.0,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return AboutPage();
                    }),
                  );
                }),
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
