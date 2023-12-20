import 'package:go_router/go_router.dart';
import 'package:pso2wiki/view/indexPage/index.view.dart';

class Routes {
  static const String homePage = "/";
}

final GoRouter router = GoRouter(
  initialLocation: Routes.homePage,
  routes: <RouteBase>[
    GoRoute(
      path: Routes.homePage,
      builder: (context, state) => const IndexView(),
    ),
  ],
);
