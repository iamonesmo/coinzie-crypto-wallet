// 616a110f5eea48318ec3f9bdc9e4da07

class Source {
  String id = '';
  String name = '';
  Source({required this.id, required this.name});

  factory Source.fromJson(Map<String, dynamic> json) {
    return Source(id: json['id'], name: json['name']);
  }
}
