import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gym/models/GymClass.dart';
import 'package:gym/providers/gym_class_provider.dart';
import 'package:gym/router.dart';
import 'package:gym/screens/extend_membership_page/extend_page.dart';
import 'package:gym/screens/homepage.dart';
import 'package:gym/screens/summary_select_membership_page/member_summary_screen.dart';
import 'package:provider/provider.dart';
import 'screens/detail_page/detailpage.dart';
import 'screens/enroll_page/enrollpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: GymClassProvider(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: routes,
        title: 'Qios Gym',
        theme: ThemeData(
          dividerColor: Colors.transparent,
          primaryColor: Color(0xFF1CAAC9),
          textTheme: TextTheme(
            displayLarge: GoogleFonts.dmSans(
              fontSize: 48,
              fontWeight: FontWeight.w700,
              color: const Color(0XFF221F20),
            ),
            displayMedium: GoogleFonts.dmSans(
              fontSize: 45,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
            displaySmall: GoogleFonts.dmSans(
              fontSize: 36,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
            headlineLarge: GoogleFonts.dmSans(
                fontSize: 34,
                fontWeight: FontWeight.w500,
                color: Colors.white,
                letterSpacing: 0.69),
            headlineMedium: GoogleFonts.dmSans(
                fontSize: 32,
                fontWeight: FontWeight.w500,
                color: const Color(0XFF221F20),
                letterSpacing: 0.39),
            headlineSmall: GoogleFonts.dmSans(
              fontSize: 24,
              // fontWeight: FontWeight.w700,
              letterSpacing: 0.12,
              color: const Color(0XFF221f20),
            ),
            titleLarge: GoogleFonts.dmSans(
              fontSize: 22,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
            titleMedium: GoogleFonts.dmSans(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              letterSpacing: 0.15,
              color: Colors.black,
            ),
            titleSmall: GoogleFonts.dmSans(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.1,
              color: Colors.black,
            ),
            labelLarge: GoogleFonts.dmSans(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.1,
              color: Colors.black,
            ),
            labelMedium: GoogleFonts.dmSans(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.5,
              color: Colors.black,
            ),
            labelSmall: GoogleFonts.dmSans(
              fontSize: 11,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.5,
              color: Colors.black,
            ),
            bodyLarge: GoogleFonts.dmSans(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              letterSpacing: 0.5,
            ),
            bodyMedium: GoogleFonts.dmSans(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              letterSpacing: 0.25,
              color: Colors.black,
            ),
            bodySmall: GoogleFonts.dmSans(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              letterSpacing: 0.4,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
