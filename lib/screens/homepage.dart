import 'package:flutter/material.dart';
import 'package:mynewsapp/screens/home_tabs/favourite.dart';
import 'package:mynewsapp/screens/home_tabs/populer.dart';
import 'package:mynewsapp/screens/home_tabs/wath_news.dart';
import 'package:mynewsapp/shared_ui/drawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex: 0, length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("title of the page"),
        centerTitle: false,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            _singleTab('WATH IS NEW'),
            _singleTab('POPULER'),
            _singleTab('FAVOURITE'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Wath_news(),
          Populer(),
          Favourite(),
        ],
      ),
      drawer: DrawerApp(),
    );
  }

  Widget _singleTab(String _Text) {
    return Container(
      child: Text(
        _Text,
        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
      ),
      padding: EdgeInsets.only(bottom: 12),
    );
  }
}
