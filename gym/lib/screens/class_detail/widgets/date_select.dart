import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DateSelect extends StatefulWidget {
  const DateSelect({super.key});

  @override
  State<DateSelect> createState() => _DateSelectState();
}

class _DateSelectState extends State<DateSelect> {
  //* Placeholder data for date
  List<String> date = [
    "5 April",
    "6 April",
    "7 April",
    "8 April",
    "9 April",
    "10 April",
    "11 April",
  ];

  //* Initial data selected (selected first data)
  int selectedDate = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 15,
      ),
      child: SizedBox(
        height: 100,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: date.length,
          itemBuilder: (context, index) => buildDate(index),
        ),
      ),
    );

    //  SingleChildScrollView(
    //   scrollDirection: Axis.horizontal,
    //   child: Padding(
    //     padding: const EdgeInsets.symmetric(
    //       vertical: 15, //for padding
    //     ),

    //     //? MAKE THE DYNAMIC ONE LATER
    //     child: Row(
    //       children: [
    //         for (var i = 0; i < 7; i++)
    //           Padding(
    //             padding: const EdgeInsets.symmetric(horizontal: 7),
    //             child: Card(
    //               elevation: 2,

    //               // width: 115,
    //               // height: 162,
    //               // decoration: BoxDecoration(
    //               //   color: Colors.white,
    //               //   borderRadius: BorderRadius.circular(10),
    //               // boxShadow: [
    //               //   BoxShadow(
    //               //     color: Colors.grey.withOpacity(0.5),
    //               //     spreadRadius: 3,
    //               //     blurRadius: 5,
    //               //     offset: const Offset(0, 3),
    //               //   )
    //               // ],
    //               //)

    //               child: InkWell(
    //                 onTap: () {
    //                   print("You clicked the date");
    //                 },
    //                 child: Container(
    //                   height: 115,
    //                   width: 162,
    //                   padding: EdgeInsets.all(10),
    //                   child: Column(
    //                     mainAxisAlignment: MainAxisAlignment.center,
    //                     children: [
    //                       Text(
    //                         "5 April",
    //                         style: GoogleFonts.dmSans(
    //                           fontSize: 24,
    //                           fontWeight: FontWeight.w700,
    //                           letterSpacing: 0.17,
    //                           color: Color(0XFF221F20),
    //                         ),
    //                       ),
    //                       const SizedBox(
    //                         height: 4,
    //                       ),
    //                       const Text(
    //                         "Wednesday",
    //                         style: TextStyle(
    //                           fontSize: 20,
    //                           fontWeight: FontWeight.w500,
    //                           letterSpacing: 0.17,
    //                           color: Color(0XFF221F20),
    //                         ),
    //                       ),
    //                     ],
    //                   ),
    //                 ),
    //               ),
    //             ),
    //           )
    //       ],
    //     ),
    //   ),
    // );
  }

//* Modular widget for the date tile
  Widget buildDate(int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7),
      child: Card(
        elevation: 2,

        // width: 115,
        // height: 162,
        // decoration: BoxDecoration(
        //   color: Colors.white,
        //   borderRadius: BorderRadius.circular(10),
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.grey.withOpacity(0.5),
        //     spreadRadius: 3,
        //     blurRadius: 5,
        //     offset: const Offset(0, 3),
        //   )
        // ],
        //)

        child: InkWell(
          onTap: () {
            setState(() {
              selectedDate = index;
            });
          },
          child: Container(
            alignment: Alignment.center,
            color: selectedDate == index
                ? Theme.of(context).primaryColor
                : Colors.white,
            // height: 115,
            // width: 162,
            padding: EdgeInsets.all(30),
            child: Text(
              date[index],
              style: GoogleFonts.dmSans(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                letterSpacing: 0.17,
                color: selectedDate == index ? Colors.white : Color(0XFF221F20),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
