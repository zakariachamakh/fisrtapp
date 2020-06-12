import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mynewsapp/shared_ui/drawer.dart';

class Instgram_Feeds extends StatefulWidget {
  @override
  _Instgram_FeedsState createState() => _Instgram_FeedsState();
}

class _Instgram_FeedsState extends State<Instgram_Feeds> {
  TextStyle _textOrange = TextStyle(
      color: Colors.orange, fontWeight: FontWeight.w500, fontSize: 15);

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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    _drawHeader(),
                    _drawcontantText(),
                    _drawHastag(),
                    _drawImage(),
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
          margin: EdgeInsets.only(right: 10, bottom: 8),
          child: CircleAvatar(
            radius: 28,
            backgroundImage: ExactAssetImage('assets/images/bg.png'),
          ),
        ),
        Transform.translate(
          offset: Offset(0, -6),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'zakaria chamakh',
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 18,
                    color: Colors.blueGrey.shade900),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                'Fri, 12 May 2017 • 14.30',
                textAlign: TextAlign.left,
                style: TextStyle(color: Colors.blueGrey.shade600),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _drawcontantText() {
    return Container(
      margin: EdgeInsets.only(top: 4,bottom: 4),
      child: Text(
        'We also talk about the future of work as the robots ',
        style: TextStyle(
          color: Colors.grey.shade900,
          fontWeight: FontWeight.w400,
          fontSize: 16,
        ),
      ),
    );
  }

  Widget _drawHastag() {
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      child: Row(
        children: <Widget>[
          Text("#cnujsncujonsc",style: _textOrange,),
          Text("#mane",style: _textOrange,),
          Text("#fitness",style: _textOrange,),
        ],
      ),
    );
  }

  Widget _drawImage() {
    return SizedBox(

      child: Center(child: Image.asset('assets/images/bg.png')),
    );
  }

  Widget _drawfooter() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            FlatButton(
              onPressed: () {},
              child: Text(
                '10 COMMENT',
                style: _textOrange,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            FlatButton(
              onPressed: () {},
              child: Text(
                'OPEN',
                style: _textOrange,
              ),
            ),
            FlatButton(
              onPressed: () {},
              child: Text(
                'SHARE',
                style: _textOrange,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
