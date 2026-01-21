import 'package:flutter/material.dart';
import 'package:scube/core/constants/asset_constants.dart';

class InformationGrid extends StatelessWidget {
  InformationGrid({super.key});

  final List<Map<String, String>> _detailedInformation = [
    {
      "title": "Total AC Capacity",
      "description": "3000 KW",
      "icon": AssetConstants.totalAcCapacityIcon,
    },
    {
      "title": "Total DC Capacity",
      "description": "3.727 MWp",
      "icon": AssetConstants.totalDcCapacityIcon,
    },
    {
      "title": "Date of Commissioning",
      "description": "17/04/2024",
      "icon": AssetConstants.calanderIcon,
    },
    {
      "title": "Number of Inverter",
      "description": "30",
      "icon": AssetConstants.inverterIcon,
    },
    {
      "title": "Total AC Capacity",
      "description": "3000 KW",
      "icon": AssetConstants.totalAcCapacityIcon,
    },
    {
      "title": "Total DC Capacity",
      "description": "3.727 MWp",
      "icon": AssetConstants.totalDcCapacityIcon,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: Column(
        children: [
          _buildInformationHeaderRow(),
          const SizedBox(height: 8),
          Expanded(
            child: GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 4,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
              ),
              itemCount: 6,
              itemBuilder: (context, index) {
                return _buildInformationCard(index);
              },
            ),
          ),
        ],
      ),
    );
  }

  Container _buildInformationCard(int index) {
    return Container(
      padding: EdgeInsets.only(left: 6, right: 4, top: 4, bottom: 4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
      ),
      alignment: Alignment.centerLeft,
      child: Row(
        crossAxisAlignment: .center,
        children: [
          Image.asset(
            _detailedInformation[index]["icon"] ??
                AssetConstants.totalAcCapacityIcon,
            scale: .8,
          ),
          const SizedBox(width: 8),
          Column(
            mainAxisAlignment: .center,
            crossAxisAlignment: .start,
            children: [
              Text(
                _detailedInformation[index]["title"] ?? "",
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 4),
              Text(
                _detailedInformation[index]["description"] ?? "",
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container _buildInformationHeaderRow() {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
      ),
      alignment: Alignment.centerLeft,
      child: Row(
        children: [
          Image.asset(AssetConstants.totalAcCapacityIcon, scale: .8),
          const SizedBox(width: 8),
          const Text(
            "Total Number of PV Module : ",
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w400,
              color: Color(0xFF082438),
            ),
          ),
          const Text(
            "6372 pcs. (585 Wp each)",
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w700,
              color: Color(0xFF082438),
            ),
          ),
        ],
      ),
    );
  }
}
