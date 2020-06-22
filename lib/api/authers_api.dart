import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mynewsapp/model/auther.dart';
import 'package:mynewsapp/utiilitise/config_api.dart';

class AuthersApi {
  List<Auther> authers = List<Auther>();

  Future<List<Auther>> fetchAllAuthers() async {
    String url = base_api + url_All_authers_api;
    var response = await http.get(url);

    if (response.statusCode == 200) {
      var jsodata = jsonDecode(response.body);
      var data = jsodata['data'];

      for (var item in data) {

        
        Auther auther = Auther(
          id: item['id'].toString(),
          name: item['name'].toString(),
          email: item['email'].toString(),
          avatar: item['avatar'].toString(),
        );

        authers.add(auther);

      }
    }
    return authers;
  }
}
