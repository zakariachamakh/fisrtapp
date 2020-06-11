import 'package:flutter/material.dart';
import 'package:mynewsapp/screens/homepage.dart';
import 'package:mynewsapp/screens/welcomescreen.dart';
import 'package:mynewsapp/utiilitise/app_theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool seen = prefs.getBool('seen');
  Widget _screen;
  if (seen == null || seen == false) {
    _screen = WelcomeScreen();
  } else {
    _screen = HomePage();
  }
  runApp(NewsApp(_screen));
}

class NewsApp extends StatelessWidget {
  final Widget _screen;

  NewsApp(this._screen);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.apptheme,
      debugShowCheckedModeBanner: false,
      home: this._screen,
    );
  }
}
