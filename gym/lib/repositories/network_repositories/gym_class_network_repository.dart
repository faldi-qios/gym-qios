import 'dart:convert';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:http/http.dart' as http;

import 'package:flutter/foundation.dart';
import 'package:gym/repositories/repository_interfaces/gym_class_repository.dart';

import '../../models/GymClass.dart';

class GymClassNetworkRepository extends GymClassRepository {
  @override
  Future<List<GymClass>?> get() async {
    // List<GymClass> classes = [];
    // try {
    //   QuerySnapshot querySnapshot =
    //       await _firestore.collection('gym-classes').get();
    //   for (QueryDocumentSnapshot documentSnapshot in querySnapshot.docs) {
    //     GymClass myClass = GymClass.fromFirestore(documentSnapshot);
    //     classes.add(myClass);
    //   }

    //   return classes;
    try {
      //* Local provider data
      return [
        GymClass(
          id: 1,
          title: "Yoga With Bare Studio 1",
          image:
              "https://static.honestdocs.id/system/blog_articles/main_hero_images/000/003/926/original/iStock-846236570_%281%29.jpg",
          description: dummyText,
          price: "Rp. 500.000,00",
          duration: 120,
        ),
        GymClass(
          id: 2,
          title: "Yoga With Bare Studio 2",
          image:
              "https://static.honestdocs.id/system/blog_articles/main_hero_images/000/003/926/original/iStock-846236570_%281%29.jpg",
          description: dummyText,
          price: "Rp. 500.000,00",
          duration: 120,
        ),
        GymClass(
          id: 3,
          title: "Yoga With Bare Studio 3",
          image:
              "https://static.honestdocs.id/system/blog_articles/main_hero_images/000/003/926/original/iStock-846236570_%281%29.jpg",
          description: dummyText,
          price: "Rp. 500.000,00",
          duration: 120,
        ),
        GymClass(
          id: 4,
          title: "Zumba With Bare Studio 1",
          image:
              "https://asset.kompas.com/crops/PbNk4jve3AtiVstvpQ8QWi5LINE=/0x0:0x0/750x500/data/photo/2016/09/22/2141363ThinkstockPhotos-522420191-zumba780x390.jpg",
          description: dummyText,
          price: "Rp. 500.000,00",
          duration: 120,
        ),
        GymClass(
          id: 5,
          title: "Zumba With Bare Studio 2",
          image:
              "https://asset.kompas.com/crops/PbNk4jve3AtiVstvpQ8QWi5LINE=/0x0:0x0/750x500/data/photo/2016/09/22/2141363ThinkstockPhotos-522420191-zumba780x390.jpg",
          description: dummyText,
          price: "Rp. 500.000,00",
          duration: 120,
        ),
        GymClass(
          id: 6,
          title: "Zumba With Bare Studio 3",
          image:
              "https://asset.kompas.com/crops/PbNk4jve3AtiVstvpQ8QWi5LINE=/0x0:0x0/750x500/data/photo/2016/09/22/2141363ThinkstockPhotos-522420191-zumba780x390.jpg",
          description: dummyText,
          price: "Rp. 500.000,00",
          duration: 120,
        ),
        GymClass(
          id: 7,
          title: "Pilates With Bare Studio 1",
          image:
              "https://d324bm9stwnv8c.cloudfront.net/article/20181002082735.145-12053403.png",
          description: dummyText,
          price: "Rp. 500.000,00",
          duration: 120,
        ),
      ];
    } catch (e) {
      return Future.error(e);
    }
  }
}

const dummyText =
    "Yoga class with Bare Studio. a local yoga studio with a certified coaches. This class duration is 2 hours";
