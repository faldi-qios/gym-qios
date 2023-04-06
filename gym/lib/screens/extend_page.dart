import 'package:flutter/material.dart';

import '../widgets/extend_form.dart';

class ExtendPage extends StatelessWidget {
  const ExtendPage({super.key});

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
              Padding(
                padding: const EdgeInsets.only(right: 150),
                child: Text("Silahkan masukkan data diri anda",
                    style:
                        Theme.of(context).textTheme.displayLarge!.copyWith()),
              ),
              SizedBox(
                height: 100,
              ),
              Expanded(
                child: ExtendForm(),
              ),
              // Column(
              //   children: [
              //     SizedBox(
              //       width: double.infinity,
              //       child: ElevatedButton(
              //         onPressed: () {
              //           if ()
              //         }, //This go to membership payment
              //         style: ElevatedButton.styleFrom(
              //           shape: const StadiumBorder(),
              //           backgroundColor: Theme.of(context).primaryColor,
              //           foregroundColor: Colors.white,
              //         ),
              //         child: Padding(
              //           padding: const EdgeInsets.symmetric(
              //               horizontal: 50.0, vertical: 30),
              //           child: Text(
              //             'Enter',
              //             style: Theme.of(context).textTheme.headlineLarge,
              //           ),
              //         ),
              //       ),
              //     ),
              //     const SizedBox(
              //       height: 40,
              //     ),
              //     TextButton(
              //       style: TextButton.styleFrom(
              //         foregroundColor: Colors.black87,
              //         textStyle: Theme.of(context).textTheme.headlineLarge,
              //       ),
              //       onPressed: () {},
              //       child: const Text('Cancel'),
              //     ),
              //     const SizedBox(
              //       height: 40,
              //     )
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
