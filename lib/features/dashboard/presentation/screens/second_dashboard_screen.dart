import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:scube/core/constants/asset_constants.dart';
import 'package:scube/core/routes/route_names.dart';
import 'package:scube/features/common/widgets/custom_app_bar.dart';
import 'package:scube/features/dashboard/presentation/widgets/dashboard_navigation_button.dart';
import 'package:scube/features/dashboard/presentation/widgets/electricity_overview_section.dart';

class SecondDashboardScreen extends StatelessWidget {
  SecondDashboardScreen({super.key});

  final List<Map<String, String>> _list = [
    {"title": "Analysis Pro", "icon": AssetConstants.chartIcon},
    {"title": "G. Generator", "icon": AssetConstants.generatorIcon},
    {"title": "Plant Summary", "icon": AssetConstants.thunderIcon5},
    {"title": "Natural Gas", "icon": AssetConstants.fireIcon},
    {"title": "D. Generator", "icon": AssetConstants.generatorIcon},
    {"title": "Water Process", "icon": AssetConstants.waterTapeIcon},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD9E4F1),
      appBar: CustomAppBar(
        appBarTitle: "2nd Page",
        onTapBackButton: () {
          context.pop();
        },
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 12, vertical: 6),
          child: Column(
            children: [
              DashboardPageNavigationButton(
                buttonName: "1st Page Navigate",
                onPressed: () {
                  context.pushReplacementNamed(RouteNames.firstDashboardScreen);
                },
              ),
              Padding(
                padding: EdgeInsets.only(left: 12, right: 12, top: 6),
                child: Column(children: [ElectricityOverviewSection()]),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 8, left: 16, right: 16),
                child: SizedBox(
                  height: 180,
                  child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 3.5,
                      crossAxisSpacing: 12,
                      mainAxisSpacing: 12,
                    ),
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return _buildInformationCard(index);
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container _buildInformationCard(int index) {
    return Container(
      padding: EdgeInsets.only(left: 6, right: 4, top: 4, bottom: 4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(width: 1, color: Color(0xFFB6B8D0)),
      ),
      alignment: Alignment.centerLeft,
      child: Row(
        crossAxisAlignment: .center,
        children: [
          Image.asset(
            _list[index]["icon"] ?? AssetConstants.totalAcCapacityIcon,
            //scale: .8,
          ),
          const SizedBox(width: 8),
          Text(
            _list[index]["title"] ?? "",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
