import 'package:flutter/material.dart';
import 'package:scube/core/constants/asset_constants.dart';
import 'package:scube/core/themes/app_colors.dart';

class DataViewList extends StatelessWidget {
  DataViewList({super.key});

  final List<DataViewCard> _list = [
    DataViewCard(
      title: 'Data View',
      active: true,
      data1: '55505.63',
      data2: '58805.63',
      icon: AssetConstants.solarCellIcon,
    ),
    DataViewCard(
      title: 'Data Type 2',
      active: true,
      data1: '55505.63',
      data2: '58805.63',
      icon: AssetConstants.batteryIcon,
    ),
    DataViewCard(
      title: 'Data Type 3',
      active: false,
      data1: '55505.63',
      data2: '58805.63',
      icon: AssetConstants.powerLineIcon,
    ),
    DataViewCard(
      title: 'Total Solar',
      active: true,
      data1: '55505.63 kW',
      data2: '58805.63 kWh',
      icon: AssetConstants.solarCellIcon,
      isTotalSolar: true,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 250, child: ListView(children: _list));
  }
}

class DataViewCard extends StatelessWidget {
  final String title;
  final bool active;
  final String data1;
  final String data2;
  final String icon;
  final bool isTotalSolar;

  const DataViewCard({
    super.key,
    required this.title,
    required this.active,
    required this.data1,
    required this.data2,
    required this.icon,
    this.isTotalSolar = false,
  });

  @override
  Widget build(BuildContext context) {
    final bgColor = isTotalSolar
        ? const Color.fromARGB(255, 216, 219, 224)
        : const Color(0xFFEAF4FF);

    final statusColor = active ? AppColors.primaryColor : Colors.red;

    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: Color(0xFFA5A7B9)),
      ),
      child: Row(
        children: [
          Container(
            height: 40,
            width: 40,
            padding: const EdgeInsets.all(8),
            child: Image.asset(icon),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(width: 6),
                    Text(
                      active ? '(Active)' : '(Inactive)',
                      style: TextStyle(fontSize: 10, color: statusColor),
                    ),
                  ],
                ),

                _DataRow(
                  label: isTotalSolar ? "Live Power" : 'Data 1',
                  value: data1,
                ),
                _DataRow(
                  label: isTotalSolar ? "Today's Energy" : 'Data 2',
                  value: data2,
                ),
              ],
            ),
          ),

          /// Arrow
          const Icon(Icons.chevron_right, color: Colors.grey),
        ],
      ),
    );
  }
}

class _DataRow extends StatelessWidget {
  final String label;
  final String value;

  const _DataRow({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 2),
      child: Row(
        children: [
          Text(
            '$label : ',
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Color(0xFF646984),
            ),
          ),
          Text(
            value,
            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
