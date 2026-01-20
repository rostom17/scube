import 'package:flutter/material.dart';
import 'package:scube/core/themes/app_colors.dart';
import 'package:scube/features/common/widgets/custom_elevated_button.dart';

import 'package:scube/features/login/presentaion/widgets/custom_text_form_field.dart';

class AnimatedLoginFields extends StatelessWidget {
  const AnimatedLoginFields({
    super.key,
    required Animation<Offset> slideAnimation,
    required TextEditingController usernameController,
    required TextEditingController passwordController,
  }) : _slideAnimation = slideAnimation,
       _usernameController = usernameController,
       _passwordController = passwordController;

  final Animation<Offset> _slideAnimation;
  final TextEditingController _usernameController;
  final TextEditingController _passwordController;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SlideTransition(
        position: _slideAnimation,
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  const SizedBox(height: 24),
                  const Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF082438),
                    ),
                  ),
                  const SizedBox(height: 32),

                  CustomTextField(
                    inputController: _usernameController,
                    hintText: "Username",
                  ),
                  const SizedBox(height: 16),
                  CustomTextField(
                    inputController: _passwordController,
                    hintText: "Password",
                    isPassowrd: true,
                  ),

                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forget Password?",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF5E5E5E),
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ),

                  CustomElevatedButton(buttonName: "Login", onPressed: () {}),
                  Row(
                    mainAxisAlignment: .center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Register Now",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: AppColors.primaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 100),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
