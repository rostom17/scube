import 'package:flutter/material.dart';
import 'package:scube/core/themes/app_colors.dart';

class TotalPowerPieChart extends StatelessWidget {
  const TotalPowerPieChart({
    super.key,
    required double chartValue,
    required double totalPower,
  }) : _chartValue = chartValue,
       _totalPower = totalPower;

  final double _chartValue;
  final double _totalPower;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          width: 140,
          height: 140,
          child: CircularProgressIndicator(
            value: _chartValue,
            strokeWidth: 20,
            backgroundColor: Colors.blue.shade100,
            color: AppColors.primaryColor,
          ),
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children:  [
            const Text(
              "Total Power",
              style: TextStyle(
                color: Color(0xFF04063E),
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              "$_totalPower kw",
              style: TextStyle(
                color: Color(0xFF04063E),
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
