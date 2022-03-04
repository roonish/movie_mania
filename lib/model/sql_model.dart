import 'dart:convert';

class SqlModel {
  final int? id;
  final String name;

  SqlModel({this.id, required this.name});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
    };
  }

  factory SqlModel.fromMap(Map<String, dynamic> map) {
    return SqlModel(
      id: map['id']?.toInt(),
      name: map['name'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory SqlModel.fromJson(String source) =>
      SqlModel.fromMap(json.decode(source));
}
