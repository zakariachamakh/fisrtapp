import 'package:flutter/material.dart';
import 'file:///D:/JetBrains/AndroidStudioProjects/my_news_app/lib/model_Welcomescreen/pagemodel.dart';
import 'package:page_view_indicator/page_view_indicator.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'homepage.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  List<PageModle> _pages;
  ValueNotifier<int> _pageIndexNotifier = ValueNotifier<int>(0);

  void _addPages() {
    _pages.add(
      PageModle('assets/images/bg.jpg', 'screen1',
          'bfiebfnweoijfvewmvofiwemivjewmivwevmew', Icons.ac_unit),
    );
    _pages.add(
      PageModle('assets/images/bg1.jpg', 'screen2',
          'bfiebfnweoijfvewmvofiwemivjewmivwevmew', Icons.accessible),
    );
    _pages.add(
      PageModle('assets/images/bg2.jpg', 'screen3',
          'bfiebfnweoijfvewmvofiwemivjewmivwevmew', Icons.mail),
    );
    _pages.add(
      PageModle('assets/images/bg3.jpg', 'screen4',
          'bfiebfnweoijfvewmvofiwemivjewmivwevmew', Icons.backup),
    );
  }

  @override
  Widget build(BuildContext context) {
    _pages = List<PageModle>();
    _addPages();
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Stack(
            children: <Widget>[
              PageView.builder(
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(_pages[index].Image),
                          fit: BoxFit.cover),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Transform.translate(
                          offset: Offset(0, -66),
                          child: Icon(
                            _pages[index].Icon,
                            color: Colors.white,
                            size: 136,
                          ),
                        ),
                        Text(
                          _pages[index].Title,
                          style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 36, right: 36),
                          child: Text(
                            _pages[index].dis,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                            maxLines: 4,
                          ),
                        ),
                      ],
                    ),
                  );
                },
                itemCount: _pages.length,
                onPageChanged: (index) {
                  _pageIndexNotifier.value = index;
                },
              ),
            ],
          ),
          Transform.translate(
            offset: Offset(0, 135),
            child: Center(
              child: _pageindicator(_pages.length),
            ),
          ),
          _button(),
        ],
      ),
    );
  }

  Widget _pageindicator(length) {
    return PageViewIndicator(
      pageIndexNotifier: _pageIndexNotifier,
      length: length,
      normalBuilder: (animationController, index) => Circle(
        size: 10.0,
        color: Colors.blue,
      ),
      highlightedBuilder: (animationController, index) => ScaleTransition(
        scale: CurvedAnimation(
          parent: animationController,
          curve: Curves.bounceIn,
        ),
        child: Circle(
          size: 16.0,
          color: Colors.red,
        ),
      ),
    );
  }

  Widget _button() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: RaisedButton(
        padding: EdgeInsets.only(left: 96, right: 96, bottom: 8, top: 8),
        color: Colors.red,
        child: Text(
          'GET SATTERD',
          style: TextStyle(
              fontWeight: FontWeight.w700, color: Colors.white, fontSize: 18),
        ),
        onPressed: () {
          _updateseen();
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return HomePage();
              },
            ),
          );
        },
      ),
    );
  }

  void _updateseen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('seen', true);
  }
}
