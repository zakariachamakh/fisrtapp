import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mynewsapp/model/post.dart';
import 'package:mynewsapp/utiilitise/config_api.dart';

class PostApi {
  List<Post> posts = List<Post>();

  Future<List<Post>> fetchPostByCategorey() async {
    String url = base_api + url_All_authers_api;
    var response = await http.get(url);

    if (response.statusCode == 200) {
      var jsodata = jsonDecode(response.body);
      var data = jsodata['data'];

      for (var item in data) {
        Post post = Post(
          id: item['id'].toString(),
          title: item['title'].toString(),
          content: item['content'].toString(),
          date_wirtten: item['date_wirtten'].toString(),
          featured_image: item['featured_image'].toString(),
          votes_down: item['votes_down'],
          votes_up: item['votes_up'],
          voters_down: (item['voters_down'] == null) ? List<int>() : jsonDecode(item['voters_down']),
          voters_up: (item['voters_up'] == null) ? List<int>() : jsonDecode(item['voters_up']),
          user_id: item['user_id'],
          category_id: item['category_id'],
        );

        posts.add(post);
      }
    }
    return posts;
  }
}
