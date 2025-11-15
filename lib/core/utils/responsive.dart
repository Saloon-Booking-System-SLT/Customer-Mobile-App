// lib/core/utils/responsive.dart

import 'package:flutter/widgets.dart';

class Responsive {
  static late MediaQueryData _mediaQuery;
  static late double screenWidth;
  static late double screenHeight;
  static late double pixelRatio;

  // Figma design size (YOU CAN CHANGE IF YOUR FIGMA IS DIFFERENT)
  static const double figmaWidth = 393;
  static const double figmaHeight = 852;

  /// Call this once inside build() of each screen
  static void init(BuildContext context) {
    _mediaQuery = MediaQuery.of(context);
    screenWidth = _mediaQuery.size.width;
    screenHeight = _mediaQuery.size.height;
    pixelRatio = _mediaQuery.devicePixelRatio;
  }

  /// Width scaler (use this for padding, margin, fonts)
  static double w(double value) {
    return value * (screenWidth / figmaWidth);
  }

  /// Height scaler (use for tall components only)
  static double h(double value) {
    return value * (screenHeight / figmaHeight);
  }

  /// Scales text (recommended)
  static double font(double size) {
    return size * (screenWidth / figmaWidth);
  }

  /// Gives true breakpoints (like CSS media queries)
  static bool isSmallDevice() => screenWidth < 360;
  static bool isMediumDevice() => screenWidth >= 360 && screenWidth < 400;
  static bool isLargeDevice() => screenWidth >= 400;
}
