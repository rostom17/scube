import 'package:flutter/material.dart';

import 'package:scube/core/constants/asset_constants.dart';

class LoginScreenHeader extends StatelessWidget {
  const LoginScreenHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 80, width: double.maxFinite),
        Column(
          children: [
            SizedBox(
              height: 96,
              width: 98,
              child: Image.asset(AssetConstants.scubeLogoPath),
            ),
            const SizedBox(height: 16),
            const Text(
              "SCUBE",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            const Text(
              "Control & Monitoring System",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 28),
          ],
        ),
      ],
    );
  }
}
