import 'package:bloc_flutter/route/route_error.dart';
import 'package:bloc_flutter/ui/auth/login_screen.dart';
import 'package:bloc_flutter/ui/auth/login_with_mobile.dart';
import 'package:bloc_flutter/ui/auth/register_steps/register_steps.dart';
import 'package:bloc_flutter/ui/auth/register_steps/take_name.dart';
import 'package:bloc_flutter/ui/navigation_screen.dart';
import 'package:bloc_flutter/ui/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRoutes {
  static final GlobalKey<NavigatorState> _navKey = GlobalKey<NavigatorState>();

  // GoRouter configuration
  static final _router = GoRouter(
    navigatorKey: _navKey,
    initialLocation: '/',
    routes: AppRoutes.routes,
    errorBuilder: (context, state) => const RouteError(),
  );

  static GoRouter get route => _router;

  static List<RouteBase> routes = [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/login-with-mobile',
      builder: (context, state) => const LoginWithMobile(),
    ),
    GoRoute(
      path: '/register-steps',
      builder: (context, state) => const RegisterSteps(),
    ),
    GoRoute(
      path: '/navigation-screen',
      builder: (context, state) => const NavigationScreen(),
    ),
  ];
}
