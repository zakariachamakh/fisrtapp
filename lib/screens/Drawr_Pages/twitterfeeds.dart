import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mynewsapp/shared_ui/drawer.dart';

class Twitter_feeds extends StatefulWidget {
  @override
  _Twitter_feedsState createState() => _Twitter_feedsState();
}

class _Twitter_feedsState extends State<Twitter_feeds> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerApp(),
      appBar: AppBar(
        title: Text('Twitter feeds'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            child: Card(
              child: Container(
                padding: EdgeInsets.only(top: 16, left: 8, right: 8, bottom: 4),
                child: Column(
                  children: <Widget>[
                    _drawHeader(),
                    _drawContant(),
                    _drawDivider(),
                    _drawfooter(),
                  ],
                ),
              ),
            ),
          );
        },
        itemCount: 20,
      ),
    );
  }

  Widget _drawHeader() {
    return Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(right: 10,bottom: 8),
          child: CircleAvatar(
            radius: 28,
            backgroundImage: ExactAssetImage('assets/images/bg.png'),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'zakaria chamakh',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Colors.blueGrey.shade900),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  '@toto_mane',
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 14,
                      color: Colors.blueGrey.shade900),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Transform.translate(
              offset: Offset(-24, 0),
              child: Text(
                'Fri, 12 May 2017 • 14.30',
                textAlign: TextAlign.left,
                style: TextStyle(color: Colors.blueGrey.shade600),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _drawContant() {
    return Container(
      padding: EdgeInsets.only(top: 8, left: 4, right: 4),
      child: Text(
        "We also talk about the future of work as the robot advance, and we ask whether a retro phone",
        style: TextStyle(
          color: Colors.blueGrey.shade800,
          fontWeight: FontWeight.w400,
          fontSize: 18,
          height: 1.4,
        ),),
    );
  }

  Widget _drawDivider() {
    return Container(
      margin: EdgeInsets.only(top: 16),
      height: 1,
      width: MediaQuery
          .of(context)
          .size
          .width,
      color: Colors.blueGrey.shade200,
    );
  }

  Widget _drawfooter() {
    TextStyle _textOrange = TextStyle(
      color: Colors.orange,
      fontWeight: FontWeight.w500,
      fontSize: 15
    );
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            IconButton(icon: Icon(Icons.repeat),
              onPressed: () {},
              color: Colors.orangeAccent,
              iconSize: 26,),
            Transform.translate(offset: Offset(-8, 0), child: Text("25"),),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            FlatButton(
              onPressed: () {}, child: Text('OPEN', style: _textOrange,),),
            FlatButton(
              onPressed: () {}, child: Text('SHARE', style: _textOrange,),),


          ],
        ),
      ],
    );
  }
}
