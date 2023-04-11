import 'package:go_router/go_router.dart';

import 'screens/detail_page/detailpage.dart';
import 'screens/enroll_page/enrollpage.dart';
import 'screens/extend_membership_page/extend_page.dart';
import 'screens/homepage.dart';
import 'screens/summary_select_membership_page/member_summary_screen.dart';

final GoRouter routes = GoRouter(
  routes: [
    GoRoute(
      name: "home",
      path: "/",
      builder: (context, state) =>
          const DetailPage(id: "2"), //! change it to homepage later
      routes: [
        GoRoute(
          name: "membership",
          path: "membership",
          builder: (context, state) => const ExtendPage(),
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
          builder: (context, state) => const EnrollPage(),
          routes: [
            GoRoute(
              name: "detail",
              path: ":id",
              builder: (context, state) => DetailPage(
                  id: state.params["id"]!), //! the param is string, fix it (?)
            )
          ],
        )
      ],
    ),
  ],
);
