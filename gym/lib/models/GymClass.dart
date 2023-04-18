import 'package:flutter/material.dart';

// class GymClass {
//   final String title, image, description, price;
//   final int id;
//   final double duration;

//   GymClass({
//     required this.id,
//     required this.title,
//     required this.image,
//     required this.description,
//     required this.price,
//     required this.duration,
//   });
// }

class GymClass {
  int? id;
  String? title;
  String? image;
  String? description;
  String? price;
  int? duration;

  GymClass({
    this.id,
    this.title,
    this.image,
    this.description,
    this.price,
    this.duration,
  });

  GymClass.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    image = json['image'];
    description = json['description'];
    price = json['price'];
    duration = json['duration'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['image'] = this.image;
    data['description'] = this.description;
    data['price'] = this.price;
    data['duration'] = this.duration;
    return data;
  }
}
