import 'package:flutter/material.dart';
import 'package:scube/core/themes/app_colors.dart';

class ToggleButtonSourceAndLoad extends StatefulWidget {
  const ToggleButtonSourceAndLoad({super.key});

  @override
  State<ToggleButtonSourceAndLoad> createState() =>
      _ToggleButtonSourceAndLoadState();
}

class _ToggleButtonSourceAndLoadState extends State<ToggleButtonSourceAndLoad> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(children: [_buildTabBar(_selectedIndex)]);
  }

  Widget _buildTabBar(int tabIndex) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFFEAF4FF),
          borderRadius: BorderRadius.circular(30),
        ),

        child: Stack(
          children: [
            AnimatedAlign(
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut,
              alignment: tabIndex == 0
                  ? Alignment.centerLeft
                  : Alignment.centerRight,
              child: Container(
                width: (MediaQuery.of(context).size.width - 96) / 2,
                height: 36,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: buildTab(
                    title: "Source",
                    index: 0,
                    tabIndex: tabIndex,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: buildTab(title: "Load", index: 1, tabIndex: tabIndex),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTab({
    required String title,
    required int index,
    required int tabIndex,
  }) {
    final isSelected = tabIndex == index;
    return GestureDetector(
      onTap: () {
        if (index == 0) {
          setState(() {
            _selectedIndex = 0;
          });
        } else {
          setState(() {
            _selectedIndex = 1;
          });
        }
      },
      child: Container(
        height: 36,
        width: (MediaQuery.of(context).size.width - 96) / 2,
        alignment: Alignment.center,
        child: AnimatedDefaultTextStyle(
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: isSelected ? Colors.white : const Color(0xFF646984),
          ),
          child: Text(title),
        ),
      ),
    );
  }
}
