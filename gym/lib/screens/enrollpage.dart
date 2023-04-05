import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gym/models/GymClass.dart';
import 'package:gym/providers/gym_class_provider.dart';
import 'package:gym/widgets/categories_widget.dart';
import 'package:provider/provider.dart';

import '../widgets/class_tile.dart';

class EnrollPage extends StatefulWidget {
  const EnrollPage({super.key});

  @override
  State<EnrollPage> createState() => _EnrollPageState();
}

class _EnrollPageState extends State<EnrollPage> {
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
            // Container(
            //   // height: 25,
            //   child: Consumer<GymClassProvider>(
            //     builder: (context, value, child) {
            //       return ListView.builder(
            //         itemBuilder: (context, index) =>
            //             CategoriesWidget(value.categories[index]),
            //         itemCount: value.categories.length,
            //         scrollDirection: Axis.horizontal,
            //       );
            //     },
            //   ),
            // ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Consumer<GymClassProvider>(
                builder: (context, value, child) {
                  return GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      // childAspectRatio: 1,
                    ),
                    itemCount: value.classes.length,
                    // padding: const EdgeInsets.all(12),
                    itemBuilder: (context, index) {
                      return ClassTile(
                          title: value.classes[index].title,
                          price: value.classes[index].price,
                          image: value.classes[index].image,
                          description: value.classes[index].description,
                          duration: value.classes[index].duration,
                          onPressed: () {
                            var id = value.classes[index].id;

                            context.go("/class/$id");
                          });
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
