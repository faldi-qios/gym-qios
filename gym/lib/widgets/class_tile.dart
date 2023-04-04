import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ClassTile extends StatelessWidget {
  final String title, image, description, price;
  // final int duration;
  void Function()? onPressed;

  ClassTile({
    super.key,
    required this.title,
    required this.image,
    required this.description,
    required this.price,
    // required this.duration,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // onTap: () => selectMeal(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        elevation: 7,
        margin: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  child: Image.network(
                    image,
                    height: 131,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(right: 30),
                      child: Text(
                        title,
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () => {}, //This go to enroll premium class
                    style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(),
                      backgroundColor: Theme.of(context).primaryColor,
                      foregroundColor: Colors.white,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15.0,
                      ),
                      child: Text(
                        'Order',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                          letterSpacing: 0.12,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                "Starting from",
                style: TextStyle(
                  fontFamily: 'Gordita',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                price,
                style: TextStyle(
                  fontFamily: 'Gordita',
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.12,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );

    // return ClipRRect(
    //   borderRadius: BorderRadius.circular(30),
    //   child: Column(
    //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //     children: [
    //       Image.network(image),
    //       Row(
    //         children: [
    //           Text(title),
    //           const ElevatedButton(
    //             onPressed: null,
    //             child: Text("Order"),
    //           ),
    //         ],
    //       ),
    //       Text("Starting From"),
    //       Text("Rp. $price")
    //     ],
    //   ),
    // );
  }
}
