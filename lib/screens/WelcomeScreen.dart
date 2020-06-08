import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mynewsapp/PageModel.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  List<PageModle> _pages;

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
              ),
            ],
          ),
          Transform.translate(
            offset: Offset(0, 135),
            child: Center(),
          ),
        ],
      ),
    );
  }
}
