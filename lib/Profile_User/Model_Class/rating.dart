import 'dart:convert';

Rating ratingFromJson(String str) => Rating.fromJson(json.decode(str));

String ratingToJson(Rating data) => json.encode(data.toJson());

class Rating {
  final String name;
  final String discripation;

  Rating({
    required this.name,
    required this.discripation,
  });

  factory Rating.fromJson(Map<String, dynamic> json) => Rating(
    name: json["name"],
    discripation: json["Discripation"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "Discripation": discripation,
  };
}
