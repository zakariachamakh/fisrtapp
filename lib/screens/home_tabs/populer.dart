import 'package:flutter/material.dart';

class Populer extends StatefulWidget {
  @override
  _PopulerState createState() => _PopulerState();
}

class _PopulerState extends State<Populer> {


  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      itemBuilder: (context, index) {
        return  Padding(
          padding: const EdgeInsets.only(
              top: 8.0, left: 8.0, right: 8.0),
          child: _SingleRowArticleTopStories(
              'The World Global Warmin Annual Summit ',
              'Michael Adams',
              '15 min'),
        );
      },
      itemCount:40,
    );
  }

  Widget _SingleRowArticleTopStories(String _Title, _auther, _time) {
    return Row(
      children: <Widget>[
        Image(
          width: MediaQuery.of(context).size.width * 0.35,
          height: MediaQuery.of(context).size.height * 0.15,
          image: ExactAssetImage('assets/images/bg.png'),
          fit: BoxFit.cover,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  _Title,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  maxLines: 2,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(_auther),
                    SizedBox(
                      height: 52,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.access_time),
                        Text(_time),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}


