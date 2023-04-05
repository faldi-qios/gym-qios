import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ClassTile extends StatelessWidget {
  final String title, image, description, price;
  final double duration;
  void Function()? onPressed;

  ClassTile({
    super.key,
    required this.title,
    required this.image,
    required this.description,
    required this.price,
    required this.duration,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 5,
        margin: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
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
              padding: const EdgeInsets.only(right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(15),
                      child: Text(
                        title,
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: onPressed, //This go to enroll premium class
                    style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(),
                      backgroundColor: Theme.of(context).primaryColor,
                      foregroundColor: Colors.white,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 5.0,
                      ),
                      child: Text(
                        'Order',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          letterSpacing: 0.1,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 15,
                top: 5,
                bottom: 5,
              ),
              child: Text(
                "Starting from",
                style: TextStyle(
                  fontFamily: 'Gordita',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.black54,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
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
