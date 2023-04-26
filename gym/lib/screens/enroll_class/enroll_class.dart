import 'dart:convert';
import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:gym/models/GymClass.dart';
import 'package:gym/providers/gym_class_provider.dart';
import 'package:gym/screens/enroll_class/widgets/categories_widget.dart';

import 'widgets/class_tile.dart';

class EnrollClass extends StatefulWidget {
  const EnrollClass({super.key});

  @override
  State<EnrollClass> createState() => _EnrollClassState();
}

class _EnrollClassState extends State<EnrollClass> {
  //! Testing the stream for the firestore
  final Stream<QuerySnapshot> classes =
      FirebaseFirestore.instance.collection('gym-classes').snapshots();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 48.0,
            right: 48.0,
            top: 30,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //* TITLE
                  Text("Enroll Premium Class",
                      style: Theme.of(context).textTheme.displayLarge),
                  const Icon(
                    Icons.shopping_cart,
                    size: 27,
                    color: Colors.black54,
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              //* SEARCH INPUT
              TextField(
                decoration: InputDecoration(
                    hintText: 'Search',
                    hintStyle: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.75,
                      color: Color(0XFF49454F),
                    ),
                    suffixIcon: const Icon(Icons.search),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 24,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(48))),
                onChanged: (value) {
                  // SEARCH INPUT GOES HERE
                },
              ),

              const CategoryWidget(),
              // Container(
              //   // height: 25,
              //   child: Consumer<GymClassProvider>(
              //     builder: (context, value, child) {
              //       return ListView.builder(
              //         shrinkWrap: true,
              //         itemBuilder: (context, index) =>
              //             CategoriesWidget(value.categories[index]),
              //         itemCount: value.categories.length,
              //         scrollDirection: Axis.horizontal,
              //       );
              //     },
              //   ),
              // ),
              Expanded(
                //* THE LIST / TILE OF GYM CLASSES
                child: StreamBuilder<QuerySnapshot>(
                  stream: classes,
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    if (snapshot.hasError) {
                      return Text("Something went wrong");
                    }
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Text("Loading");
                    }
                    final data = snapshot.requireData;

                    return GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2),
                      itemCount: data.size,
                      itemBuilder: (context, index) {
                        return ClassTile(
                            title: data.docs[index]["title"],
                            price: data.docs[index]["price"],
                            image: data.docs[index]["image"],
                            description: data.docs[index]["description"],
                            duration: data.docs[index]["duration"],
                            onPressed: () {
                              var id = data.docs[index]["id"];

                              context.go("/enroll-class/$id");
                            });
                      },
                    );
                  },
                ),

                //     //! BELOW THE WAY BEFORE
                //     Consumer<GymClassProvider>(
                //   builder: (context, value, child) {
                //     return GridView.builder(
                //       gridDelegate:
                //           const SliverGridDelegateWithFixedCrossAxisCount(
                //         crossAxisCount: 2,
                //         // childAspectRatio: 1,
                //       ),
                //       itemCount: value.classes.length,

                //       // padding: const EdgeInsets.all(12),
                //       itemBuilder: (context, index) {
                //         return ClassTile(
                //             title: value.classes[index].title,
                //             price: value.classes[index].price,
                //             image: value.classes[index].image,
                //             description: value.classes[index].description,
                //             duration: value.classes[index].duration,
                //             onPressed: () {
                //               var id = value.classes[index].id;

                //               context.go("/enroll-class/$id");
                //             });
                //       },
                //     );
                //   },
                // ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
