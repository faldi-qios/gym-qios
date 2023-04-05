import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DatePick extends StatefulWidget {
  const DatePick({super.key});

  @override
  State<DatePick> createState() => _DatePickState();
}

class _DatePickState extends State<DatePick> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => print("Date Selected"),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 15, //for padding
          ),

          //? MAKE THE DYNAMIC ONE LATER
          child: Row(
            children: [
              Padding(
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

                  child: Container(
                    height: 115,
                    width: 162,
                    padding: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "5 April",
                          style: GoogleFonts.dmSans(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.17,
                            color: Color(0XFF221F20),
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Wednesday",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.17,
                            color: Color(0XFF221F20),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
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

                  child: Container(
                    height: 115,
                    width: 162,
                    padding: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "5 April",
                          style: GoogleFonts.dmSans(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.17,
                            color: Color(0XFF221F20),
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Wednesday",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.17,
                            color: Color(0XFF221F20),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
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

                  child: Container(
                    height: 115,
                    width: 162,
                    padding: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "5 April",
                          style: GoogleFonts.dmSans(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.17,
                            color: Color(0XFF221F20),
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Wednesday",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.17,
                            color: Color(0XFF221F20),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
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

                  child: Container(
                    height: 115,
                    width: 162,
                    padding: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "5 April",
                          style: GoogleFonts.dmSans(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.17,
                            color: Color(0XFF221F20),
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Wednesday",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.17,
                            color: Color(0XFF221F20),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
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

                  child: Container(
                    height: 115,
                    width: 162,
                    padding: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "5 April",
                          style: GoogleFonts.dmSans(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.17,
                            color: Color(0XFF221F20),
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Wednesday",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.17,
                            color: Color(0XFF221F20),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
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

                  child: Container(
                    height: 115,
                    width: 162,
                    padding: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "5 April",
                          style: GoogleFonts.dmSans(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.17,
                            color: Color(0XFF221F20),
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Wednesday",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.17,
                            color: Color(0XFF221F20),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
