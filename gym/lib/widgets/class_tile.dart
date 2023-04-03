import 'package:flutter/material.dart';

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
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.network(image),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(title),
                const ElevatedButton(
                  onPressed: null,
                  child: Text("Order"),
                ),
              ],
            ),
            Text("Starting From"),
            Text("Rp. $price")
          ],
        ),
      ),
    );
  }
}
