import 'package:flutter/material.dart';

import 'package:scube/core/themes/app_colors.dart';
import 'package:scube/features/login/presentaion/widgets/animated_login_fields.dart';
import 'package:scube/features/login/presentaion/widgets/login_screen_header.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _slideAnimation;
  bool _showLoginForm = false;
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _slideAnimation = Tween<Offset>(begin: const Offset(0, 1), end: Offset.zero)
        .animate(
          CurvedAnimation(
            parent: _animationController,
            curve: Curves.easeOutCubic,
          ),
        );

    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) {
        setState(() {
          _showLoginForm = true;
        });
        _animationController.forward();
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Stack(
        children: [
          LoginScreenHeader(),

          if (_showLoginForm)
            AnimatedLoginFields(
              slideAnimation: _slideAnimation,
              usernameController: _usernameController,
              passwordController: _passwordController,
            ),
        ],
      ),
    );
  }
}
