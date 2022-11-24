import 'dart:convert';

List<WatchList> watchListFromJson(String str) =>
    List<WatchList>.from(json.decode(str).map((x) => WatchList.fromJson(x)));

String watchListToJson(List<WatchList> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class WatchList {
  String watched;
  String title;
  int rating;
  String release_date;
  String review;

  WatchList({
    required this.watched,
    required this.title,
    required this.rating,
    required this.release_date,
    required this.review,
  });

  factory WatchList.fromJson(Map<String, dynamic> json) => WatchList(
      watched: json["fields"]["watched"],
      title: json["fields"]["title"],
      rating: json["fields"]["rating"],
      release_date: json["fields"]["release_date"],
      review: json["fields"]["review"]);

  Map<String, dynamic> toJson() => {
        "watched": watched,
        "title": title,
        "rating": rating,
        "release_date": release_date,
        "review": review
      };
}
