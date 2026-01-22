import 'package:flutter/material.dart';
import 'package:scube/core/themes/app_colors.dart';
import 'package:scube/core/utls/time_utl.dart';

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
      child: Row(children: [_buildTemperatureCard(), _buildWeatherCard()]),
    );
  }

  Padding _buildWeatherCard() {
    return Padding(
      padding: EdgeInsets.only(top: 4, bottom: 4, left: 12, right: 8),
      child: Row(
        mainAxisAlignment: .spaceBetween,
        children: [
          SizedBox(
            width: 140,
            child: Column(
              crossAxisAlignment: .start,
              children: [
                Text(
                  "26 MPH / NW",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Wind Speed & Direction",
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  "15.20 w/m²",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Effective Irradiation",
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Image.asset(TimeUtl.getTimeBasedIcon(DateTime.now())),
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
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: .start,
              mainAxisAlignment: .center,
              children: [
                Row(
                  children: [
                    Text(
                      "${TimeUtl.getTemperature(DateTime.now())}",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: AppColors.primaryColor,
                      ),
                    ),
                    Text(
                      " °C",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ],
                ),
                Text(
                  "Module\nTemperature",
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF5E5E5E),
                  ),
                ),
              ],
            ),
            const Spacer(),
            Image.asset(TimeUtl.getTimeBasedTemperatureIcon(DateTime.now())),
          ],
        ),
      ),
    );
  }
}
