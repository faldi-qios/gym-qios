import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  final String title;

  const CategoriesWidget(this.title);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      child: Text(title),
    );
  }
}
