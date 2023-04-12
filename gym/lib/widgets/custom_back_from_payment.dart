import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TitleWithBackButton extends StatelessWidget {
  final String title;

  const TitleWithBackButton({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: BackButton(
        color: Colors.black,
        onPressed: () => Navigator.of(context).pop(), // <-- SEE HERE
      ),
      backgroundColor: Colors.transparent,
      title: Text(title),
      foregroundColor: Colors.black,
      elevation: 0,
    );
  }
}
