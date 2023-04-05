import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gym/providers/gym_class_provider.dart';
import 'package:gym/widgets/time_picker.dart';
import 'package:provider/provider.dart';

import '../widgets/date_picker.dart';
import '../widgets/dropdown_menu.dart';

class DetailPage extends StatelessWidget {
  final String id;

  const DetailPage({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.black, // <-- SEE HERE
        ),
        backgroundColor: Colors.transparent,
        title: const Text("Back to home"),
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: SingleChildScrollView(
          child: Consumer<GymClassProvider>(
            builder: (context, value, child) {
              final data = value.detailClass(id);

              return Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //? For the image
                    ClipRRect(
                      borderRadius: BorderRadius.circular(23),
                      child: Image.network(
                        data.image,
                      ),
                    ),
                    const SizedBox(height: 40),
                    //? For the title
                    Text(
                      data.title,
                      style: GoogleFonts.dmSans(
                        fontSize: 40,
                        fontWeight: FontWeight.w700,
                        color: const Color(0XFF221F20),
                      ),
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    //? Price
                    const Text(
                      "Starting from",
                      style: TextStyle(
                        fontFamily: "Gordita",
                        fontSize: 32,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.15,
                        color: Colors.black54,
                      ),
                    ),
                    //? For the price
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Text(
                        data.price,
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w700,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                    const SizedBox(height: 36),
                    //? For the description
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Product Description",
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          data.description,
                          style: const TextStyle(
                            fontFamily: 'Gordita',
                            fontWeight: FontWeight.w400,
                            fontSize: 24,
                            letterSpacing: 0.39,
                            color: Color(0XFF221F20),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    //? For the duration
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Class Duration",
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          "${data.duration} Menit",
                          style: const TextStyle(
                            fontFamily: 'Gordita',
                            fontWeight: FontWeight.w400,
                            fontSize: 24,
                            letterSpacing: 0.39,
                            color: Color(0XFF221F20),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 40),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Cabang Gym",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.25,
                            color: Color(0XFF221F20),
                          ),
                        ),
                        //? Dropdown Menu
                        DropDownMenu(),
                      ],
                    ),
                    const SizedBox(height: 40),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Select Date",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.25,
                            color: Color(0XFF221F20),
                          ),
                        ),
                        //? Pick a Date
                        DatePick(),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Select Time",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.25,
                            color: Color(0XFF221F20),
                          ),
                        ),
                        //? Pick Time
                        TimePick(),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
