import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:scube/core/routes/route_names.dart';

import 'package:scube/features/common/widgets/custom_app_bar.dart';
import 'package:scube/features/dashboard/presentation/widgets/dashboard_navigation_button.dart';
import 'package:scube/features/dashboard/presentation/widgets/information_grid.dart';
import 'package:scube/features/dashboard/presentation/widgets/overview_grid.dart';
import 'package:scube/features/dashboard/presentation/widgets/summary_grid.dart';
import 'package:scube/features/dashboard/presentation/widgets/daily_comparioson_section.dart';
import 'package:scube/features/dashboard/presentation/widgets/weather_grid.dart';

class FirstDashboardScreen extends StatefulWidget {
  const FirstDashboardScreen({super.key});

  @override
  State<FirstDashboardScreen> createState() => _FirstDashboardScreenState();
}

class _FirstDashboardScreenState extends State<FirstDashboardScreen> {
  final List<DailyComparisonItemData> _compariosonItemList = [
    DailyComparisonItemData(
      label: 'AC Max Power',
      yesterday: '1636.50 kW',
      today: '2121.88 kW',
    ),
    DailyComparisonItemData(
      label: 'Net Energy',
      yesterday: '6439.16 kWh',
      today: '4875.77 kWh',
    ),
    DailyComparisonItemData(
      label: 'Specific Yield',
      yesterday: '1.25 kWh/kWp',
      today: '0.94 kWh/kWp',
    ),
    DailyComparisonItemData(
      label: 'Net Energy',
      yesterday: '6439.16 kWh',
      today: '4875.77 kWh',
    ),
    DailyComparisonItemData(
      label: 'Specific Yield',
      yesterday: '1.25 kWh/kWp',
      today: '0.94 kWh/kWp',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD9E4F1),
      appBar: CustomAppBar(
        appBarTitle: "1st Page",
        onTapBackButton: () {
          context.pop();
        },
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          child: Column(
            children: [
              DashboardPageNavigationButton(
                buttonName: "2nd Page Navigate",
                onPressed: () {
                  context.pushNamed(RouteNames.secondDashboardScreen);
                },
              ),
              SizedBox(height: 12),
              SizedBox(height: 100, child: SummaryGrid()),
              SizedBox(height: 8),
              WeatherGrid(),
              const SizedBox(height: 14),
              DailyComparisonSection(items: _compariosonItemList),
              const SizedBox(height: 14),
              InformationGrid(),
              OverviewGrid(),
              const SizedBox(height: 12),
              OverviewGrid(),
            ],
          ),
        ),
      ),
    );
  }
}
