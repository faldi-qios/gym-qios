import 'package:go_router/go_router.dart';
import 'package:gym/screens/detailpage.dart';
import 'package:gym/screens/enrollpage.dart';
import 'package:gym/screens/homepage.dart';

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
          name: "class",
          path: "class",
          builder: (context, state) => EnrollPage(),
          routes: [
            GoRoute(
              name: "detail",
              path: ":id",
              builder: (context, state) => DetailPage(
                  // id: int.parse(state.params["id"] as String),
                  id: state.params["id"]!),
            )
          ],
        )
      ],
    ),
  ],
);
