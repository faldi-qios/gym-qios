import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TimeSelect extends StatelessWidget {
  const TimeSelect({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 15, //for padding
        ),

        //? MAKE THE DYNAMIC ONE LATER
        child: Row(
          children: [
            for (var i = 0; i < 9; i++)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 7),
                child: Card(
                  elevation: 2,
                  child: InkWell(
                    onTap: () {
                      print("You selected the time");
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 82,
                      width: 162,
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        "10:00",
                        style: GoogleFonts.dmSans(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.17,
                          color: const Color(0XFF221F20),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
