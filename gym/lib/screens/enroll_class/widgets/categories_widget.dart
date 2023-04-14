// import 'package:flutter/material.dart';
// import 'package:gym/providers/gym_class_provider.dart';
// import 'package:provider/provider.dart';

// import '../../../models/category.dart';
// import '../product_provider.dart';

// class CategoryWidget extends StatelessWidget {
//   const CategoryWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final textTheme = Theme.of(context).textTheme;
//     final selectedCategory =
//         context.select<>((value) => value.category);
//     final categories = context.read<ProductProvider>().categories;

//     return SizedBox(
//       height: 75,
//       child: Padding(
//         padding: const EdgeInsets.symmetric(vertical: 16),
//         child: ListView.builder(
//           scrollDirection: Axis.horizontal,
//           itemCount: categories?.length,
//           itemBuilder: (context, index) {
//             return Padding(
//               padding: const EdgeInsets.only(right: 8),
//               child: InputChip(
//                 side: BorderSide(
//                     color: selectedCategory == categories?[index]
//                         ? Theme.of(context).primaryColor
//                         : Colors.black26),
//                 showCheckmark: false,
//                 selectedColor: Theme.of(context).primaryColor,
//                 backgroundColor: const Color(0xFFF1F1F1),
//                 onPressed: () {
//                   context.read<ProductProvider>().category = categories?[index];
//                 },
//                 selected: selectedCategory == categories?[index],
//                 label: Text(
//                   categories?[index].name ?? "",
//                   style: textTheme.bodyMedium!.copyWith(
//                     color: selectedCategory == categories?[index]
//                         ? Colors.white
//                         : Colors.black45,
//                   ),
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

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
