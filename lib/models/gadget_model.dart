// To parse this JSON data, do
//
//     final gadgetModel = gadgetModelFromJson(jsonString);

import 'dart:convert';

List<GadgetModel> gadgetModelFromJson(String str) => List<GadgetModel>.from(json.decode(str).map((x) => GadgetModel.fromJson(x)));

String gadgetModelToJson(List<GadgetModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GadgetModel {
    final int id;
    final String title;
    final double price;
    final String description;
    final String category;
    final String image;
    final Rating rating;

    GadgetModel({
        required this.id,
        required this.title,
        required this.price,
        required this.description,
        required this.category,
        required this.image,
        required this.rating,
    });

    factory GadgetModel.fromJson(Map<String, dynamic> json) => GadgetModel(
        id: json["id"],
        title: json["title"],
        price: json["price"]?.toDouble(),
        description: json["description"],
        category: json["category"],
        image: json["image"],
        rating: Rating.fromJson(json["rating"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "price": price,
        "description": description,
        "category": category,
        "image": image,
        "rating": rating.toJson(),
    };
}

class Rating {
    final double rate;
    final int count;

    Rating({
        required this.rate,
        required this.count,
    });

    factory Rating.fromJson(Map<String, dynamic> json) => Rating(
        rate: json["rate"]?.toDouble(),
        count: json["count"],
    );

    Map<String, dynamic> toJson() => {
        "rate": rate,
        "count": count,
    };
}
