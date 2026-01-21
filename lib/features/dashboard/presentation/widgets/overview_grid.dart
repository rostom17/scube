import 'package:flutter/material.dart';
import 'package:scube/core/constants/asset_constants.dart';

class OverviewGrid extends StatelessWidget {
  OverviewGrid({super.key});

  final List<Map<String, String>> _energyList = [
    {
      "title": "Lifetime Energy",
      "description": "352.96 MWh",
      "icon": AssetConstants.thunderIcon,
    },
    {
      "title": "Total Energy",
      "description": "273.69 MWh",
      "icon": AssetConstants.countdownIcon,
    },
    {
      "title": "Prev. Meter Energy",
      "description": "0.00 MWh",
      "icon": AssetConstants.thunderTwoIcon,
    },
    {
      "title": "Live Power",
      "description": "352.96 MWh",
      "icon": AssetConstants.electricityMeterIcon,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: double.maxFinite,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(width: 1.5, color: Color(0xFFB9C6D6)),
      ),
      child: Column(
        children: [
          _buildHeader(),

          const Divider(color: Color(0xFFAFCCDF)),

          Expanded(
            child: GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 3.8,
                crossAxisSpacing: 8,
              ),
              itemCount: 4,
              itemBuilder: (context, index) {
                return _buildCard(index);
              },
            ),
          ),
        ],
      ),
    );
  }

  Container _buildCard(int index) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),

      child: Row(
        crossAxisAlignment: .center,
        mainAxisAlignment: .start,
        children: [
          Image.asset(_energyList[index]["icon"] ?? "", scale: .8),
          const SizedBox(width: 4),
          Column(
            crossAxisAlignment: .start,
            mainAxisAlignment: .center,
            children: [
              Text(
                _energyList[index]["title"] ?? "",
                style: TextStyle(fontSize: 8, fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 4),
              Text(
                _energyList[index]["description"] ?? "",
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Row _buildHeader() {
    return Row(
      children: [
        Text(
          "LT_01",
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w700,
            color: Color(0xFF082438),
          ),
        ),
        const Spacer(),
        Image.asset(AssetConstants.thunderInsideRingIcon),
        const SizedBox(width: 4),
        Text(
          "495.505 kWp / 440 kW",
          style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w600,
            color: Color(0xFF0684D9),
          ),
        ),
      ],
    );
  }
}
