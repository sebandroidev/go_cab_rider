import 'package:go_router/go_router.dart';

import '../../features/landing/screens/landing_screen.dart';
import '../../features/welcome/screens/welcome_screen.dart';
import 'app_navigation_keys.dart';
import 'app_routes.dart';
import 'route_names.dart';

class AppNavigation {
  AppNavigation._();

  static final GoRouter router = GoRouter(
    initialLocation: AppRoutes.landingRoute,
    debugLogDiagnostics: true,
    navigatorKey: AppNavigationKeys.rootNavKey,
    routes: <RouteBase>[
      GoRoute(
        parentNavigatorKey: AppNavigationKeys.rootNavKey,
        path: AppRoutes.landingRoute,
        name: RouteNames.landingScreen,
        builder: (context, state) => const LandingScreen(),
        routes: <RouteBase>[
          GoRoute(
            path: AppRoutes.welcomeRoute,
            name: RouteNames.welcomeScreen,
            builder: (context, state) => const WelcomeScreen(),
          ),
        ],
      )
    ],
  );
}
