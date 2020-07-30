import 'package:common_utils/common_utils.dart';
import 'package:flustars/flustars.dart';

class DeviceInfo {
  static double _screenWidth;
  static double _screenHeight;
  static double _appBarHeight;

  static DeviceInfo _deviceInfo;

  static DeviceInfo getInstance() {
    if (ObjectUtil.isEmpty(_deviceInfo)) {
      var screenUtil = ScreenUtil.getInstance();
      _deviceInfo = DeviceInfo();
      _screenWidth = screenUtil.screenWidth;
      _screenHeight = screenUtil.screenHeight;
      _appBarHeight = screenUtil.appBarHeight;
    }
    return _deviceInfo;
  }

  double get screenWidth => _screenWidth;
  double get screenHeight => _screenHeight;
  double get appBarHeight => _appBarHeight;
}
