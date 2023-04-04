import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  final String title;

  const CategoriesWidget(this.title);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.black54)),
        child: Text(title),
      ),
    );
  }
}
