import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Wath_news extends StatefulWidget {
  @override
  _Wath_newsState createState() => _Wath_newsState();
}

class _Wath_newsState extends State<Wath_news> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _drawHeader(),
          Padding(
            padding: const EdgeInsets.only(left: 18, top: 24),
            child: _drawTitleOfSection('Top Stories'),
          ),
          Container(
            margin: EdgeInsets.only(left: 12, right: 12, top: 8),
            child: Card(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 12.0, left: 12.0, right: 12.0, bottom: 4),
                    child: _SingleRowArticleTopStories(
                        'The World Global Warmin Annual Summit ',
                        'Michael Adams',
                        '15 min'),
                  ),
                  _drawDiveder(),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 12.0, left: 12.0, right: 12.0, bottom: 4),
                    child: _SingleRowArticleTopStories(
                        'The World Global Warmin Annual Summit ',
                        'Michael Adams',
                        '15 min'),
                  ),
                  _drawDiveder(),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 12.0, left: 12.0, right: 12.0, bottom: 4),
                    child: _SingleRowArticleTopStories(
                        'Spotlight on Medtech Outsourcing and Innovation ',
                        'Michael Adams',
                        '15 min'),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18, top: 24, bottom: 24),
            child: _drawTitleOfSection('Recent Updates'),
          ),
          _cardNews('Vettel is Ferrari Number One - Hamilton','sport','15min',Colors.orangeAccent),
          _cardNews('Vettel is Ferrari Number One - Hamilton','LIFESTYLE','15min',Colors.greenAccent),
          SizedBox(
            height: 48,
          ),
        ],
      ),
    );
  }

  Widget _drawTitleOfSection(String _text) {
    return Text(
      _text,
      style: TextStyle(
          color: Colors.grey, fontWeight: FontWeight.w500, fontSize: 16),
      textAlign: TextAlign.left,
    );
  }

  Widget _drawHeader() {
    TextStyle _title = TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w600,
      fontSize: 26.0,
    );
    TextStyle _description = TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w300,
      fontSize: 18.0,
    );

    return Container(
      padding: EdgeInsets.only(left: 34, right: 34),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.25,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: ExactAssetImage('assets/images/bg.png'), fit: BoxFit.cover),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'How Terriers & Royal Gatecrashed Final',
              style: _title,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              'Lorem ipsum dolor sit amet, consectetu adipiscing elit, sed do eiusmod.',
              style: _description,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
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

  Widget _drawDiveder() {
    return Container(
      height: 1,
      width: double.infinity,
      color: Colors.grey.shade200,
    );
  }

  Widget _cardNews(String _title, _tag, _time, Color _color) {
    return Padding(
      padding: const EdgeInsets.only(left: 8,right: 8),
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Image(
              image: ExactAssetImage('assets/images/bg.png'),
              fit: BoxFit.cover,
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.25,
            ),
            Container(
              decoration: BoxDecoration(
                color: _color,
                borderRadius: BorderRadius.circular(8),
              ),
              margin: EdgeInsets.only(top: 12, left: 8, bottom: 14),
              padding: EdgeInsets.only(left: 22, right: 22, bottom: 4, top: 4),
              child: Text(
                _tag,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 18, right: 20),
              child: Text(
                _title,
                maxLines: 2,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 22, top: 8,bottom: 12),
              child: Row(
                children: <Widget>[
                  Icon(Icons.access_time),
                  Text(
                    _time,
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
