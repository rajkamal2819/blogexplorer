import 'dart:convert';

import 'package:blogexplorer/models/model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class BlogListProvider extends ChangeNotifier {
  BlogList blogList = BlogList(blogs: []);

  void fetchBlogs() async {
    const String url = 'https://intent-kit-16.hasura.app/api/rest/blogs';
    const String adminSecret =
        '32qR4KmXOIpsGPQKMqEJHGJS27G5s7HdSKO3gdtQd2kv5e852SiYwWNfxkZOBuQ6';

    try {
      final response = await http.get(Uri.parse(url), headers: {
        'x-hasura-admin-secret': adminSecret,
      });

      if (response.statusCode == 200) {
        // Request successful, handle the response data here
        print('Response data: ${response.body}');
        blogList = BlogList.fromJson(jsonDecode(response.body));
        notifyListeners();
      }
    } catch (e) {
      // Handle any errors that occurred during the request
      print('Error: $e');
    }
  }
}
