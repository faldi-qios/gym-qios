import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gym/providers/gym_class_provider.dart';
import 'package:gym/screens/choose_payment/choose_payment.dart';
import 'package:gym/screens/class_detail/class_detail_page.dart';
import 'package:gym/screens/enroll_class/enroll_class.dart';
import 'package:gym/screens/extend_membership/extend_membership_page.dart';
import 'package:gym/screens/homepage.dart';
import 'package:gym/screens/input_data/input_data_page.dart';
import 'package:gym/screens/order_summary/order_summary.dart';
import 'package:provider/provider.dart';

final start = GoRoute(
  path: "/",
  pageBuilder: (context, state) {
    return const NoTransitionPage(
      child: HomePage(),
    );
  },
);

final extendMembership = GoRoute(
    path: "/extend-membership",
    pageBuilder: (context, state) {
      return const NoTransitionPage(
        child: InputData(),
      );
    },
    routes: [
      GoRoute(
        name: "select-membership",
        path: "select",
        pageBuilder: (context, state) {
          return const NoTransitionPage(
            child: SelectMembership(),
          );
        },
        // builder: (context, state) => const SelectMembership(),
      )
    ]);

final enrollClass = GoRoute(
  path: "/enroll-class",
  pageBuilder: (context, state) {
    return NoTransitionPage(
      child: ChangeNotifierProvider(
        create: (_) => GymClassProvider(),
        builder: (context, child) {
          return const EnrollClass();
        },
      ),
    );
  },
  //! IF NOT WORK SEPARATE IT
  routes: [
    GoRoute(
      path: ":classId",
      pageBuilder: (context, state) {
        return NoTransitionPage(
          child: ChangeNotifierProvider(
            create: (_) => GymClassProvider(),
            builder: (context, child) {
              return ClassDetail(id: state.params["classId"]!);
            },
          ),
        );
      },
    ),
  ],
);

final orderSummary = GoRoute(
  path: "/order-summary",
  pageBuilder: (context, state) {
    return const NoTransitionPage(
      child: OrderSummary(),
    );
  },
);

final payment = GoRoute(
  path: "/payment",
  pageBuilder: (context, state) {
    return const NoTransitionPage(
      child: ChoosePayment(),
    );
  },
);

final shellRoute = ShellRoute(
  pageBuilder: (context, state, child) {
    return NoTransitionPage(
      child: Scaffold(
        body: child,
      ),
    );
  },
  routes: [start, extendMembership, enrollClass, orderSummary, payment],
);

final routes = GoRouter(
  initialLocation: "/",
  routes: [shellRoute],
  errorPageBuilder: (context, state) {
    return const NoTransitionPage(
      child: Scaffold(
        //! REPLACE WITH ERROR SCREEN LATER
        body: Center(
          child: Text("Page Not Found"),
        ),
      ),
    );
  },
);
