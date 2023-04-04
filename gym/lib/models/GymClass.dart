import 'package:flutter/material.dart';

class GymClass {
  final String title, image, description, price;
  final int id;
  final double duration;

  GymClass({
    required this.id,
    required this.title,
    required this.image,
    required this.description,
    required this.price,
    required this.duration,
  });
}
