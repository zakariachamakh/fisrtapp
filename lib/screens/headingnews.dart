import 'package:flutter/material.dart';
import 'package:mynewsapp/screens/home_tabs/favourite.dart';
import 'package:mynewsapp/screens/home_tabs/populer.dart';
import 'package:mynewsapp/shared_ui/drawer.dart';

class Heding_news extends StatefulWidget {
  @override
  _Heding_newsState createState() => _Heding_newsState();
}

class _Heding_newsState extends State<Heding_news>
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
        title: Text("Heding news"),
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
          Favourite(),
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
