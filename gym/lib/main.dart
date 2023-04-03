import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gym/models/GymClass.dart';
import 'package:gym/providers/gym_class_provider.dart';
import 'package:gym/screens/homepage.dart';
import 'package:provider/provider.dart';
import 'screens/enrollpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final GoRouter _router = GoRouter(
      routes: [
        GoRoute(
          name: "home",
          path: "/",
          builder: (context, state) => const HomePage(),
          routes: [
            // GoRoute(
            //   name: "payment",
            //   path: "payment",
            //   builder: (context, state) => PaymmentPage(),
            // ),
            GoRoute(
              name: "enroll",
              path: "enroll",
              builder: (context, state) => EnrollPage(),
            )
          ],
        ),
      ],
    );

    return MultiProvider(
      providers: [ChangeNotifierProvider.value(value: GymClassProvider())],
      child: MaterialApp.router(
        routerConfig: _router,
        title: 'Qios Gym',
        theme: ThemeData(
          dividerColor: Colors.transparent,
          primaryColor: Color(0xFF1CAAC9),
          textTheme: TextTheme(
            displayLarge: GoogleFonts.dmSans(
              fontSize: 57,
              fontWeight: FontWeight.w700,
              color: Colors.black,
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
              fontSize: 32,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
            headlineMedium: GoogleFonts.dmSans(
              fontSize: 28,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
            headlineSmall: GoogleFonts.dmSans(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: Colors.black,
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
              fontWeight: FontWeight.w700,
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
