import 'package:coinzie/models/source_model.dart';

class Artical {
  late Source source;
  String author = '';
  String title = '';
  String description = '';
  String url = '';
  String urlToImage = '';
  String publishedAt = '';
  String content = '';

  Artical(
      {required this.author,
      required this.title,
      required this.content,
      required this.description,
      required this.publishedAt,
      required this.source,
      required this.url,
      required this.urlToImage});

  factory Artical.fromJson(Map<String, dynamic> json) {
    return Artical(
      source: Source.fromJson(json['source']),
      author: json['author'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      url: json['url'] as String,
      urlToImage: json['urlToImage'] as String,
      publishedAt: json['publishedAt'] as String,
      content: json['content'] as String,
    );
  }
}
