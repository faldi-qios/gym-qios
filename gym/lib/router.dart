import 'package:go_router/go_router.dart';
import 'package:gym/screens/choose_payment/choose_payment.dart';
import 'package:gym/screens/order_summary/order_summary.dart';

import 'screens/class_detail/class_detail_page.dart';
import 'screens/enroll_class/enroll_class.dart';
import 'screens/input_data/input_data_page.dart';
import 'screens/homepage.dart';
import 'screens/extend_membership/extend_membership_page.dart';

final GoRouter routes = GoRouter(
  routes: [
    GoRoute(
      name: "home",
      path: "/",
      builder: (context, state) =>
          const HomePage(), //! change it to homepage later
      routes: [
        GoRoute(
          name: "membership",
          path: "membership",
          builder: (context, state) => const InputData(),
          routes: [
            GoRoute(
              name: "summary",
              path: "summary",
              builder: (context, state) => const SelectMembership(),
            )
          ],
        ),
        GoRoute(
          name: "enroll",
          path: "enroll",
          builder: (context, state) => const EnrollClass(),
          routes: [
            GoRoute(
              name: "detail",
              path: ":id",
              builder: (context, state) => ClassDetail(
                  id: state.params["id"]!), //! the param is string, fix it (?)
            )
          ],
        ),
        GoRoute(
            name: "orderSum",
            path: "orderSum",
            builder: (context, state) => const OrderSummary(),
            routes: [
              GoRoute(
                name: "choosePayment",
                path: "payment",
                builder: (context, state) => ChoosePayment(),
              )
            ])
      ],
    ),
  ],
);
