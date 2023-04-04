import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:gym/providers/gym_class_provider.dart';
import 'package:provider/provider.dart';

class DetailPage extends StatelessWidget {
  final String id;

  const DetailPage({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const BackButton(
            color: Colors.black, // <-- SEE HERE
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Text("Back to home"),
          foregroundColor: Colors.black,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Consumer<GymClassProvider>(
            builder: (context, value, child) {
              final data = value.detailClass(id);

              return Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(data.image),
                    ),
                    Text(
                      data.title,
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text("Starting from"),
                    Text(
                      data.price,
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w700,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    SizedBox(height: 30),
                    Text(
                      "Product Description",
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                    Text(
                      data.description,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Class Duration",
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                  ],
                ),
              );
            },
          ),
        ));
  }
}
