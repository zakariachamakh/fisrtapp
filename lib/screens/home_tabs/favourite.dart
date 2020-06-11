import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Favourite extends StatefulWidget {
  @override
  _FavouriteState createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return Card(
        child: Container(
          padding: EdgeInsets.only(top: 12, left: 4),
          child: Column(
            children: <Widget>[
              _headerRowCard(),
              _drawArticleRow(),
            ],
          ),
        ),
      );
    },itemCount: 20,);
  }

  Widget _headerRowCard() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 8),
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: ExactAssetImage('assets/images/bg.png'),
                    fit: BoxFit.cover),
              ),
            ),
            Column(
              children: <Widget>[
                Text(
                  'zakaria chamakh',
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: <Widget>[
                    Text('15min'),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      'lifestyle',
                      style: TextStyle(color: Colors.teal),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
        IconButton(icon: Icon(Icons.bookmark), onPressed: () {})
      ],
    );
  }

  Widget _drawArticleRow() {
    return Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 14, left: 12, bottom: 32, right: 12),
          width: 112,
          height: 112,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: ExactAssetImage('assets/images/bg.png'),
                fit: BoxFit.cover),
          ),
        ),
        Expanded(
          child: Column(
            children: <Widget>[
              Text(
                "title of the single article of the news app tha is just test one",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                maxLines: 2,
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                "description of the single article of the news app tha is just test one description of the single article of the news app tha is just test one",
                style: TextStyle(color: Colors.grey, fontSize: 12, height: 1.4),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
