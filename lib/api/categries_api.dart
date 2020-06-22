import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mynewsapp/model/category.dart';
import 'package:mynewsapp/utiilitise/config_api.dart';

List<Category> catogries = List<Category>();

Future<List<Category>> fetchAllCategories() async {
  String url = base_api + url_All_categories_api;
  var response = await http.get(url);

  if (response.statusCode == 200) {
    var jsodata = jsonDecode(response.body);
    var data = jsodata['data'];

    for (var item in data) {
      Category category = Category(item['id'], item['title']);

      catogries.add(category);
    }
  }
  return catogries;
}
