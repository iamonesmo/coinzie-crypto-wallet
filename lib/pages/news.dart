import 'package:coinzie/services/api_services.dart';
import 'package:flutter/material.dart';

import '../widgets/customNewsTile.dart';

import '../models/artical_model.dart';

class News extends StatefulWidget {
  const News({Key? key}) : super(key: key);

  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
  ApiService client = ApiService();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: client.getArticle(),
        builder: (BuildContext context, AsyncSnapshot<List<Artical>> snapshot) {
          if (snapshot.hasData) {
            List<Artical>? articals = snapshot.data;
            print(articals!.length);

            return ListView.builder(
              itemCount: articals.length,
              itemBuilder: (context, index) => customNewsTile(articals[index]),
            );
          }

          return Center(
            child: CircularProgressIndicator(),
          );
        });
  }
}
