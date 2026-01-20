import 'package:flutter/material.dart';

import 'package:scube/core/themes/app_colors.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.buttonName,
    required this.onPressed,
  });

  final String buttonName;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(double.maxFinite, 60),
        backgroundColor: AppColors.primaryColor,
        padding: const EdgeInsets.symmetric(vertical: 16),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
      ),
      onPressed: onPressed,
      child: Text(buttonName),
    );
  }
}
