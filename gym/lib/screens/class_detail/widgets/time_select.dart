import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TimeSelect extends StatefulWidget {
  const TimeSelect({super.key});

  @override
  State<TimeSelect> createState() => _TimeSelectState();
}

class _TimeSelectState extends State<TimeSelect> {
  //* Placeholder data for time
  List<String> time = [
    "10:00",
    "12:00",
    "14:00",
    "16:00",
    "18:00",
    "20:00",
  ];

  //* Initial data selected (selected first data)
  int selectedTime = 0;

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
            itemCount: time.length,
            itemBuilder: (context, index) => buildTime(index),
          )),
    );

    // SingleChildScrollView(
    //   scrollDirection: Axis.horizontal,
    //   child: Padding(
    //     padding: const EdgeInsets.symmetric(
    //       vertical: 15, //for padding
    //     ),

    //     //? MAKE THE DYNAMIC ONE LATER
    //     child: Row(
    //       children: [
    //         for (var i = 0; i < 9; i++)
    //           Padding(
    //             padding: const EdgeInsets.symmetric(horizontal: 7),
    //             child: Card(
    //               elevation: 2,
    //               child: InkWell(
    //                 onTap: () {
    //                   print("You selected the time");
    //                 },
    //                 child: Container(
    //                   alignment: Alignment.center,
    //                   height: 82,
    //                   width: 162,
    //                   padding: const EdgeInsets.all(10),
    //                   child: Text(
    //                     "10:00",
    //                     style: GoogleFonts.dmSans(
    //                       fontSize: 24,
    //                       fontWeight: FontWeight.w700,
    //                       letterSpacing: 0.17,
    //                       color: const Color(0XFF221F20),
    //                     ),
    //                   ),
    //                 ),
    //               ),
    //             ),
    //           ),
    //       ],
    //     ),
    //   ),
    // );
  }

  //* Modular widget for the time tile
  Widget buildTime(int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7),
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(7),
        ),
        child: InkWell(
          onTap: () {
            setState(() {
              selectedTime = index;
            });
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(7),
            child: Container(
              alignment: Alignment.center,
              // height: 82,
              // width: 162,
              color: selectedTime == index
                  ? Theme.of(context).primaryColor
                  : Colors.white,
              padding: const EdgeInsets.all(30),
              child: Text(
                time[index],
                style: GoogleFonts.dmSans(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.17,
                  color: selectedTime == index
                      ? Colors.white
                      : const Color(0XFF221F20),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
