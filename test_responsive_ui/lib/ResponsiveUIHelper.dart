import 'package:flutter/material.dart';

class ResponsiveUIHelper {
  factory ResponsiveUIHelper() {
    return _singleton;
  }

  static final ResponsiveUIHelper _singleton = ResponsiveUIHelper._internal();

  ResponsiveUIHelper._internal() {
    print("Instance created ResponsiveUIHelper");
  }

  //region Screen Size and Proportional according to device
  double _currentScreenHeight;
  double _currentScreenWidth;

  double get screenHeight => _currentScreenHeight;
  double get screenWidth => _currentScreenWidth;

  final double _referenceScreenHeight = 740;
  final double _referenceScreenWidth = 360;

  void updateScreenDimension({double width, double height}) {
    _currentScreenWidth = (width != null) ? width : _currentScreenWidth;
    _currentScreenHeight = (height != null) ? height : _currentScreenHeight;
  }

  double getProportionalHeight({double height}) {
    if (_currentScreenHeight == null) return height;
    return _currentScreenHeight * height / _referenceScreenHeight;
  }

  double getProportionalWidth({double width}) {
    if (_currentScreenWidth == null) return width;
    var w = _currentScreenWidth * width / _referenceScreenWidth;
    return w.ceilToDouble();
  }

  //device orientation
  Orientation getDeviceOrientation(BuildContext context) {
    return MediaQuery.of(context).orientation;
  }

  //Large screen is any screen whose width is more than 1200 pixels
  static bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 1200;
  }

  //Small screen is any screen whose width is less than 800 pixels
  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < 800;
  }

  //Medium screen is any screen whose width is less than 1200 pixels,
  //and more than 800 pixels
  static bool isMediumScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 800 &&
        MediaQuery.of(context).size.width < 1200;
  }
  
  //regular TextStyle
  TextStyle getTextStyleRegular(
      {String fontName = 'Roboto-Regular',
      int fontSize = 12,
      Color color,
      bool isChangeAccordingToDeviceSize = true,
      double characterSpacing,
      double lineSpacing}) {
    double finalFontSize = fontSize.toDouble();
    if (isChangeAccordingToDeviceSize && this._currentScreenWidth != null) {
      finalFontSize =
          (finalFontSize * _currentScreenWidth) / _referenceScreenWidth;
    }
    if (characterSpacing != null) {
      return TextStyle(
          fontSize: finalFontSize,
          fontFamily: fontName,
          color: color,
          letterSpacing: characterSpacing);
    } else if (lineSpacing != null) {
      return TextStyle(
          fontSize: finalFontSize,
          fontFamily: fontName,
          color: color,
          height: lineSpacing);
    }
    return TextStyle(
        fontSize: finalFontSize, fontFamily: fontName, color: color);
  }
}
