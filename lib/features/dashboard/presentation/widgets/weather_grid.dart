import 'package:flutter/material.dart';
import 'package:scube/core/constants/asset_constants.dart';

class WeatherGrid extends StatefulWidget {
  const WeatherGrid({super.key});

  @override
  State<WeatherGrid> createState() => _WeatherGridState();
}

class _WeatherGridState extends State<WeatherGrid> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFB982D9), Color(0xFF2E63F7)],
          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          _buildTemperatureCard(),
          Padding(
            padding: EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Column(children: [Text("hel")]),
                Image.asset(AssetConstants.moonIcon),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTemperatureCard() {
    return Container(
      width: MediaQuery.of(context).size.width * .4,
      height: double.maxFinite,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(12),
          bottomRight: Radius.circular(12),
        ),
      ),
      child: Center(child: Text("Temperature Card")),
    );
  }
}
