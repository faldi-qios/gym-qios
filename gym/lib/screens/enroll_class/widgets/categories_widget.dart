import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 8),
              child: InputChip(
                side: BorderSide(color: Theme.of(context).primaryColor),
                showCheckmark: false,
                selectedColor: Theme.of(context).primaryColor,
                backgroundColor: const Color(0xFFF1F1F1),
                onPressed: () {},
                // selected: selectedCategory == categories?[index],
                label: Text("Test"),
              ),
            );
          },
        ),
      ),
    );
  }
}
