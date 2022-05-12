// To parse this JSON data, do
//
//     final post = postFromJson(jsonString);

import 'dart:convert';

List<Post> postFromJson(String str) =>
    List<Post>.from(json.decode(str).map((x) => Post.fromJson(x)));

String postToJson(List<Post> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Post {
  Post({
    required this.id,
    required this.userId,
    required this.title,
    required this.dueOn,
    this.status,
  });

  int id;
  int userId;
  String title;
  DateTime dueOn;
  Status? status;

  factory Post.fromJson(Map<String, dynamic> json) => Post(
        id: json["id"],
        userId: json["user_id"],
        title: json["title"],
        dueOn: DateTime.parse(json["due_on"]),
        status: statusValues.map[json["status"]],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "title": title,
        "due_on": dueOn.toIso8601String(),
        "status": statusValues.reverse[status],
      };
}

enum Status { completed, pending }

final statusValues =
    EnumValues({"completed": Status.completed, "pending": Status.pending});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;
  
  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => MapEntry(v, k));
    }
    return reverseMap;
  }
}
