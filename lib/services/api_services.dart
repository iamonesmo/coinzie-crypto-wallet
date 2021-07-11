import 'dart:convert';

import 'package:coinzie/models/artical_model.dart';
import 'package:http/http.dart';

class ApiService {
  final endPointUrl =
      "https://newsapi.org/v2/top-headlines?q=crypto&apiKey=616a110f5eea48318ec3f9bdc9e4da07";

  Future<List<Artical>> getArticle() async {
    Response res = await get(Uri.parse(endPointUrl));

    if (res.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(res.body);
      List<dynamic> body = json['articles'];

      List<Artical> articals =
          body.map((dynamic item) => Artical.fromJson(item)).toList();

      return articals;
    } else {
      throw ("can't get the articles");
    }
  }
}
