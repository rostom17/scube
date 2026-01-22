import 'package:scube/core/constants/asset_constants.dart';

class TimeUtl {
  static String getTimeBasedIcon(DateTime time) {
    final hour = time.hour;
    final minute = time.minute;

    if ((hour == 11) || (hour == 12 && minute == 0)) {
      return AssetConstants.couldySunIcon;
    }

    if ((hour == 12 && minute > 0) || (hour == 13 && minute == 0)) {
      return AssetConstants.sunIcon;
    }

    if ((hour == 14 && minute >= 30) || (hour == 15 && minute <= 30)) {
      return AssetConstants.moonIcon;
    }

    return AssetConstants.couldySunIcon;
  }

  static String getTimeBasedTemperatureIcon(DateTime time) {
    final hour = time.hour;
    final minute = time.minute;

    if ((hour == 11) || (hour == 12 && minute == 0)) {
      return AssetConstants.blueTempLogo;
    }

    if ((hour == 12 && minute > 0) || (hour == 13 && minute == 0)) {
      return AssetConstants.redTempLogo;
    }

    if ((hour == 14 && minute >= 30) || (hour == 15 && minute <= 30)) {
      return AssetConstants.greenTempLogo;
    }

    return AssetConstants.blueTempLogo;
  }

  static int getTemperature(DateTime time) {
    final hour = time.hour;
    final minute = time.minute;

    if ((hour == 11) || (hour == 12 && minute == 0)) {
      return 17;
    }

    if ((hour == 12 && minute > 0) || (hour == 13 && minute == 0)) {
      return 30;
    }

    if ((hour == 14 && minute >= 30) || (hour == 15 && minute <= 30)) {
      return 19;
    }

    return 17;
  }
}
