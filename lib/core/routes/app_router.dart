import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:scube/core/routes/route_names.dart';

class AppRouter {
  late final GoRouter router = GoRouter(
    initialLocation: "/splash-screen",
    routes: [
      GoRoute(
        path: "/splash-screen",
        name: RouteNames.splashScreen,
        builder: (context, state) => Container(color: Colors.amber),
      ),
      GoRoute(
        path: "/log-in-screen",
        name: RouteNames.logInScreen,
        builder: (context, state) => Container(color: Colors.deepPurple),
      ),
    ],
    errorBuilder: (context, state) =>
        Scaffold(body: Center(child: Text("Error Route.!"))),
  );
}
