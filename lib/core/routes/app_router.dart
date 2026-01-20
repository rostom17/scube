import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:scube/core/routes/route_names.dart';
import 'package:scube/features/login/presentaion/screens/login_screen.dart';

class AppRouter {
  late final GoRouter router = GoRouter(
    initialLocation: "/log-in-screen",
    routes: [
      GoRoute(
        path: "/splash-screen",
        name: RouteNames.splashScreen,
        builder: (context, state) => Container(color: Colors.amber),
      ),
      GoRoute(
        path: "/log-in-screen",
        name: RouteNames.logInScreen,
        builder: (context, state) => LoginScreen(),
      ),
    ],
    errorBuilder: (context, state) =>
        Scaffold(body: Center(child: Text("Error Route.!"))),
  );
}
