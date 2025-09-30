import 'package:go_router/go_router.dart';
import 'package:meditator_app/router/route_nam.dart';
import 'package:meditator_app/screen/main_screen.dart';

class RouterClass {
  final router = GoRouter(
    initialLocation: "/",
    routes: [
      GoRoute(
        path: "/",
        name: RouteName.mainPage,
        builder: (context, state) {
          return MainScreen();
        },
      ),
    ],
  );
}
