import 'package:coinzie/models/artical_model.dart';
import 'package:flutter/material.dart';

Widget customNewsTile(Artical article) {
  return Container(
    margin: EdgeInsets.all(12),
    padding: EdgeInsets.all(8),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18.0),
        boxShadow: [
          BoxShadow(
            blurRadius: 3.0,
            color: Colors.black12,
          )
        ]),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 200.0,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(article.urlToImage)),
              borderRadius: BorderRadius.circular(8.0)),
        ),
        SizedBox(
          height: 8,
        ),
        Container(
          padding: EdgeInsets.all(6.0),
          decoration: BoxDecoration(
              color: Colors.red, borderRadius: BorderRadius.circular(30.0)),
          child: Text(
            article.source.name,
            style: TextStyle(color: Colors.white),
          ),
        ),
        SizedBox(
          height: 8.0,
        ),
        Text(
          article.title,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 16, fontFamily: 'Poppins'),
        )
      ],
    ),
  );
}
