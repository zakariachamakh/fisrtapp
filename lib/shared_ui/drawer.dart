import 'package:flutter/material.dart';
import 'package:mynewsapp/screens/Drawr_Pages/facebookfeeds.dart';
import 'package:mynewsapp/screens/Drawr_Pages/headingnews.dart';
import 'package:mynewsapp/screens/Drawr_Pages/instagramfeeds.dart';
import 'package:mynewsapp/screens/Drawr_Pages/twitterfeeds.dart';
import 'package:mynewsapp/screens/homepage.dart';
import 'package:mynewsapp/shared_ui/destation.dart';

class DrawerApp extends StatefulWidget {
  @override
  _DrawerAppState createState() => _DrawerAppState();
}

class _DrawerAppState extends State<DrawerApp> {
  @override
  Widget build(BuildContext context) {
    List<NavDes> _destantion = [
      NavDes("Expoler", () => HomePage()),
      NavDes("heding news", () => Heding_news()),
      NavDes("Twitter feeds", () => Twitter_feeds()),
      NavDes("Instgram feeds", () => Instgram_Feeds()),
      NavDes("Facebbok feeds", () => Facebook_feeds()),
    ];

    return Drawer(
      child: Container(
        margin: EdgeInsets.only(left: 8, right: 8, top: 120),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                _destantion[index].Title,
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey.shade600),
              ),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return _destantion[index].destation();
                    },
                  ),
                );
              },
            );
          },
          itemCount: _destantion.length,
        ),
      ),
    );
  }
}
