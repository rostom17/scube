import 'package:flutter/material.dart';
import 'package:scube/core/themes/app_colors.dart';

class DashboardPageNavigationButton extends StatelessWidget {
  const DashboardPageNavigationButton({
    super.key,
    required String buttonName,
    required VoidCallback onPressed,
  }) : _buttonName = buttonName,
       _onPressed = onPressed;

  final String _buttonName;
  final VoidCallback _onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.secondaryColor,
        foregroundColor: Colors.white,
        textStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(4),
        ),
      ),
      onPressed: _onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(_buttonName),
          const SizedBox(width: 16),
          Icon(Icons.arrow_forward_ios),
        ],
      ),
    );
  }
}
