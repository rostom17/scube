import 'package:flutter/material.dart';

class DailyComparisonSection extends StatelessWidget {
  final List<DailyComparisonItemData> items;

  const DailyComparisonSection({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          const _DailyComparisonHeader(),
          const Divider(height: 16, color: Color(0xFF9AA9BC)),
          ...items.map((item) => _DailyComparisonRow(item: item)),
        ],
      ),
    );
  }
}

class _DailyComparisonHeader extends StatelessWidget {
  const _DailyComparisonHeader();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: const [
          Expanded(child: Text('')),
          Expanded(
            child: Text(
              "Yesterday's Data",
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color(0xFF082438),
              ),
            ),
          ),
          Expanded(
            child: Text(
              "Today's Data",
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color(0xFF082438),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _DailyComparisonRow extends StatelessWidget {
  final DailyComparisonItemData item;

  const _DailyComparisonRow({required this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          Expanded(
            child: Text(
              item.label,
              style: const TextStyle(fontSize: 12, color: Color(0xFF082438)),
            ),
          ),

          Expanded(
            child: Text(
              item.yesterday,
              textAlign: TextAlign.right,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Color(0xFF082438),
              ),
            ),
          ),

          Expanded(
            child: Text(
              item.today,
              textAlign: TextAlign.right,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Color(0xFF082438),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DailyComparisonItemData {
  final String label;
  final String yesterday;
  final String today;

  DailyComparisonItemData({
    required this.label,
    required this.yesterday,
    required this.today,
  });
}
