import 'package:flutter/material.dart';

class FirstDashboardScreen extends StatefulWidget {
  const FirstDashboardScreen({super.key});

  @override
  State<FirstDashboardScreen> createState() => _FirstDashboardScreenState();
}

class _FirstDashboardScreenState extends State<FirstDashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("Dash Board Screen")));
  }
}
