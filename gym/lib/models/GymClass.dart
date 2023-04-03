import 'package:flutter/material.dart';

class GymClass extends ChangeNotifier {
  final String title, image, description;
  final double price;
  final int duration, id;

  GymClass({
    required this.id,
    required this.title,
    required this.image,
    required this.description,
    required this.price,
    required this.duration,
  });

  final List<GymClass> _classes = [
    GymClass(
      id: 1,
      title: "Yoga With Bare Studio 1",
      image:
          "https://static.honestdocs.id/system/blog_articles/main_hero_images/000/003/926/original/iStock-846236570_%281%29.jpg",
      description: dummyText,
      price: 500000,
      duration: 120,
    ),
    GymClass(
      id: 2,
      title: "Yoga With Bare Studio 2",
      image:
          "https://static.honestdocs.id/system/blog_articles/main_hero_images/000/003/926/original/iStock-846236570_%281%29.jpg",
      description: dummyText,
      price: 500000,
      duration: 120,
    ),
    GymClass(
      id: 3,
      title: "Yoga With Bare Studio 3",
      image:
          "https://static.honestdocs.id/system/blog_articles/main_hero_images/000/003/926/original/iStock-846236570_%281%29.jpg",
      description: dummyText,
      price: 500000,
      duration: 120,
    ),
    GymClass(
      id: 4,
      title: "Yoga With Bare Studio 4",
      image:
          "https://static.honestdocs.id/system/blog_articles/main_hero_images/000/003/926/original/iStock-846236570_%281%29.jpg",
      description: dummyText,
      price: 500000,
      duration: 120,
    ),
    GymClass(
      id: 5,
      title: "Yoga With Bare Studio 5",
      image:
          "https://static.honestdocs.id/system/blog_articles/main_hero_images/000/003/926/original/iStock-846236570_%281%29.jpg",
      description: dummyText,
      price: 500000,
      duration: 120,
    ),
    GymClass(
      id: 6,
      title: "Yoga With Bare Studio 6",
      image:
          "https://static.honestdocs.id/system/blog_articles/main_hero_images/000/003/926/original/iStock-846236570_%281%29.jpg",
      description: dummyText,
      price: 500000,
      duration: 120,
    ),
    GymClass(
      id: 7,
      title: "Yoga With Bare Studio 7",
      image:
          "https://static.honestdocs.id/system/blog_articles/main_hero_images/000/003/926/original/iStock-846236570_%281%29.jpg",
      description: dummyText,
      price: 500000,
      duration: 120,
    ),
    GymClass(
      id: 8,
      title: "Yoga With Bare Studio 8",
      image:
          "https://static.honestdocs.id/system/blog_articles/main_hero_images/000/003/926/original/iStock-846236570_%281%29.jpg",
      description: dummyText,
      price: 500000,
      duration: 120,
    ),
  ];

  get classes => _classes;
}

const dummyText =
    "Yoga class with Bare Studio. a local yoga studio with a certified coaches. This class duration is 2 hours";
