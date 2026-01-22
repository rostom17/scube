import 'package:flutter/material.dart';
import 'package:scube/core/themes/app_colors.dart';
import 'package:scube/features/dashboard/presentation/widgets/data_view_list.dart';
import 'package:scube/features/dashboard/presentation/widgets/toggle_button_source_and_load.dart';
import 'package:scube/features/dashboard/presentation/widgets/total_power_pie_chart.dart';

class ElectricityOverviewSection extends StatelessWidget {
  const ElectricityOverviewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            _buildHeaderTabBar(),
            Padding(
              padding: EdgeInsets.all(12),
              child: Column(
                children: [
                  const Text(
                    'Electricity',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF979797),
                    ),
                  ),
                  const Divider(color: Color(0xFF979797)),
                  SizedBox(
                    height: 180,
                    child: const TotalPowerPieChart(
                      chartValue: 0.65,
                      totalPower: 5.53,
                    ),
                  ),
                  const SizedBox(height: 12),
                  const ToggleButtonSourceAndLoad(),
                  Divider(color: Color(0xFFA5A7B9)),
                  const SizedBox(height: 8),
                  DataViewList(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  TabBar _buildHeaderTabBar() {
    return TabBar(
      isScrollable: false,
      indicatorSize: TabBarIndicatorSize.tab,
      indicator: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
      ),
      labelStyle: TextStyle(
        color: Colors.white,
        fontSize: 14,
        fontWeight: FontWeight.w700,
      ),
      unselectedLabelStyle: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      tabs: [
        SizedBox(height: 40, child: Center(child: Text("Summary"))),
        SizedBox(height: 40, child: Center(child: Text("SLD"))),
        SizedBox(height: 40, child: Center(child: Text("Data"))),
      ],
    );
  }
}
