import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:scube/core/routes/app_router.dart';

void main() {
  final appRouter = AppRouter();
  runApp(MyApp(router: appRouter.router));
}

class MyApp extends StatelessWidget {
  const MyApp({required this.router, super.key});

  final GoRouter router;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routerConfig: router);
  }
}
