import 'package:flutter/material.dart';
import 'package:scube/core/constants/asset_constants.dart';

class SummaryGrid extends StatelessWidget {
  SummaryGrid({super.key});

  final List<Map<String, String>> _summrayDetails = [
    {
      "title": "1000kW",
      "description": "Live Ac Power",
      "icon": AssetConstants.liveAcPowerIcon,
    },
    {
      "title": "82.58 %",
      "description": "Plant Generation",
      "icon": AssetConstants.plantRegenerationIcon,
    },
    {
      "title": "85.61 %",
      "description": "Live PR",
      "icon": AssetConstants.livePrIcon,
    },
    {
      "title": "27.51 %",
      "description": "Cumulative PR",
      "icon": AssetConstants.cumulativePrIcon,
    },
    {
      "title": "1000 ৳",
      "description": "Return PV",
      "icon": AssetConstants.returnPvTillTodyIcon,
    },
    {
      "title": "10000 kWh",
      "description": "Total Energy",
      "icon": AssetConstants.totalEnergyIcon,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 3 / 1.1,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
      ),
      itemCount: 6,
      itemBuilder: (context, index) {
        return _buildSummaryCard(index);
      },
    );
  }

  Container _buildSummaryCard(int index) {
    return Container(
      padding: EdgeInsets.only(left: 6, right: 4, top: 4, bottom: 4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
      ),
      alignment: Alignment.centerLeft,
      child: Row(
        mainAxisAlignment: .start,
        children: [
          Image.asset(
            _summrayDetails[index]["icon"] ?? AssetConstants.liveAcPowerIcon,
            scale: .8,
          ),
          const SizedBox(width: 4),
          Column(
            crossAxisAlignment: .start,
            children: [
              Text(
                _summrayDetails[index]["title"] ?? "",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
              ),
              index != 4
                  ? Text(
                      _summrayDetails[index]["description"] ?? "",
                      style: TextStyle(
                        fontSize: 9,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  : Text.rich(
                      TextSpan(
                        children: [
                          const TextSpan(
                            text: "Return PV",
                            style: TextStyle(
                              fontSize: 9,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          WidgetSpan(
                            alignment: PlaceholderAlignment.bottom,
                            child: Text(
                              'Till Today',
                              style: TextStyle(fontSize: 6),
                            ),
                          ),
                        ],
                      ),
                    ),
            ],
          ),
        ],
      ),
    );
  }
}
