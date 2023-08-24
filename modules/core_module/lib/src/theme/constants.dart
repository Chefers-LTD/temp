import 'dart:ui';

import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

class Constant {
/* *** *** Colors *** *** */
  static const Color bronzeColor = Color(0xFFDE832D);
  static const Color castletonGreenColor = Color(0xCC19573D);
  static const Color seashellColor = Color(0xFFFFF3ED);
  static const Color amberColor = Color(0xFFF8BE26);
  static const Color jetBlackColor = Color(0xFF35322F);
  static const Color whiteColor = Color(0xFFFDFDFD);
  static const Color shimmerBaseColor = Color(0xFFF1EFEF);
  static const Color shimmerHighlightColor = Color(0xFFF9F8F8);
  static const Color platinumColor = Color(0xFFE2E2E2);
  static const Color pantonRedColor = Color(0xFFE63946);
  static const Color grayColor = Color(0xFF7F7F7F);
  static const Color antiFlashWhite = Color(0xFFEEEEEE);
  static const Color silverColor = Color(0xFFA4A4A4);

/* *** *** SystemUiOverlayStyle *** *** */
  // static const SystemUiOverlayStyle systemUiOverlayStyle = SystemUiOverlayStyle(
  //   systemNavigationBarColor: jetBlackColor,
  //   systemNavigationBarDividerColor: jetBlackColor,
  //   systemNavigationBarIconBrightness: Brightness.dark,
  //   statusBarColor: whiteColor,
  //   statusBarBrightness: Brightness.light,
  //   statusBarIconBrightness: Brightness.dark,
  // );

/* *** *** Shadow *** *** */
  static BoxShadow shadow = BoxShadow(
    color: const Color(0xFF000000).withOpacity(0.05),
    spreadRadius: 0,
    blurRadius: 25,
    offset: const Offset(0, 5), // changes position of shadow
  );

/* *** *** Character Styles *** *** */
  static const displayLarge = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 57,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w400,
    letterSpacing: -0.0025 * 57,
    height: 64 / 57,
    color: jetBlackColor,
    fontVariations: [
      FontVariation('ital', 1),
      FontVariation('wght', 100),
      FontVariation('wght', 200),
      FontVariation('wght', 300),
      FontVariation('wght', 500),
      FontVariation('wght', 600),
      FontVariation('wght', 700),
      FontVariation('wght', 800),
      FontVariation('wght', 900),
    ],
  );

  static const displayMedium = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 45,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    height: 52 / 45,
    color: jetBlackColor,
    fontVariations: [
      FontVariation('ital', 1),
      FontVariation('wght', 100),
      FontVariation('wght', 200),
      FontVariation('wght', 300),
      FontVariation('wght', 500),
      FontVariation('wght', 600),
      FontVariation('wght', 700),
      FontVariation('wght', 800),
      FontVariation('wght', 900),
    ],
  );

  static const displaySmall = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 36,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    height: 44 / 36,
    color: jetBlackColor,
    fontVariations: [
      FontVariation('ital', 1),
      FontVariation('wght', 100),
      FontVariation('wght', 200),
      FontVariation('wght', 300),
      FontVariation('wght', 500),
      FontVariation('wght', 600),
      FontVariation('wght', 700),
      FontVariation('wght', 800),
      FontVariation('wght', 900),
    ],
  );

  static const headlineLarge = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 32,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    height: 40 / 32,
    color: jetBlackColor,
    fontVariations: [
      FontVariation('ital', 1),
      FontVariation('wght', 100),
      FontVariation('wght', 200),
      FontVariation('wght', 300),
      FontVariation('wght', 500),
      FontVariation('wght', 600),
      FontVariation('wght', 700),
      FontVariation('wght', 800),
      FontVariation('wght', 900),
    ],
  );

  static const headlineMedium = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 28,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    height: 36 / 28,
    color: jetBlackColor,
    fontVariations: [
      FontVariation('ital', 1),
      FontVariation('wght', 100),
      FontVariation('wght', 200),
      FontVariation('wght', 300),
      FontVariation('wght', 500),
      FontVariation('wght', 600),
      FontVariation('wght', 700),
      FontVariation('wght', 800),
      FontVariation('wght', 900),
    ],
  );

  static const headlineSmall = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 24,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    height: 32 / 24,
    color: jetBlackColor,
    fontVariations: [
      FontVariation('ital', 1),
      FontVariation('wght', 100),
      FontVariation('wght', 200),
      FontVariation('wght', 300),
      FontVariation('wght', 500),
      FontVariation('wght', 600),
      FontVariation('wght', 700),
      FontVariation('wght', 800),
      FontVariation('wght', 900),
    ],
  );

  static const titleLarge = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 22,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    height: 28 / 22,
    color: jetBlackColor,
    fontVariations: [
      FontVariation('ital', 1),
      FontVariation('wght', 100),
      FontVariation('wght', 200),
      FontVariation('wght', 300),
      FontVariation('wght', 500),
      FontVariation('wght', 600),
      FontVariation('wght', 700),
      FontVariation('wght', 800),
      FontVariation('wght', 900),
    ],
  );

  static const titleMedium = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 16,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.0015 * 16,
    height: 24 / 16,
    color: jetBlackColor,
    fontVariations: [
      FontVariation('ital', 1),
      FontVariation('wght', 100),
      FontVariation('wght', 200),
      FontVariation('wght', 300),
      FontVariation('wght', 500),
      FontVariation('wght', 600),
      FontVariation('wght', 700),
      FontVariation('wght', 800),
      FontVariation('wght', 900),
    ],
  );

  static const titleSmall = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 14,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.001 * 14,
    height: 20 / 14,
    color: jetBlackColor,
    fontVariations: [
      FontVariation('ital', 1),
      FontVariation('wght', 100),
      FontVariation('wght', 200),
      FontVariation('wght', 300),
      FontVariation('wght', 500),
      FontVariation('wght', 600),
      FontVariation('wght', 700),
      FontVariation('wght', 800),
      FontVariation('wght', 900),
    ],
  );

  static const labelLarge = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 14,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.001 * 14,
    height: 20 / 14,
    color: jetBlackColor,
    fontVariations: [
      FontVariation('ital', 1),
      FontVariation('wght', 100),
      FontVariation('wght', 200),
      FontVariation('wght', 300),
      FontVariation('wght', 500),
      FontVariation('wght', 600),
      FontVariation('wght', 700),
      FontVariation('wght', 800),
      FontVariation('wght', 900),
    ],
  );

  static const labelMedium = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 12,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.005 * 12,
    height: 16 / 12,
    color: jetBlackColor,
    fontVariations: [
      FontVariation('ital', 1),
      FontVariation('wght', 100),
      FontVariation('wght', 200),
      FontVariation('wght', 300),
      FontVariation('wght', 500),
      FontVariation('wght', 600),
      FontVariation('wght', 700),
      FontVariation('wght', 800),
      FontVariation('wght', 900),
    ],
  );

  static const labelSmall = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 11,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.005 * 11,
    height: 16 / 11,
    color: jetBlackColor,
    fontVariations: [
      FontVariation('ital', 1),
      FontVariation('wght', 100),
      FontVariation('wght', 200),
      FontVariation('wght', 300),
      FontVariation('wght', 500),
      FontVariation('wght', 600),
      FontVariation('wght', 700),
      FontVariation('wght', 800),
      FontVariation('wght', 900),
    ],
  );

  static const bodyLarge = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 16,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.005 * 16,
    height: 30 / 16,
    color: jetBlackColor,
    fontVariations: [
      FontVariation('ital', 1),
      FontVariation('wght', 100),
      FontVariation('wght', 200),
      FontVariation('wght', 300),
      FontVariation('wght', 500),
      FontVariation('wght', 600),
      FontVariation('wght', 700),
      FontVariation('wght', 800),
      FontVariation('wght', 900),
    ],
  );

  static const bodyMedium = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 14,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.0025 * 14,
    height: 20 / 14,
    color: jetBlackColor,
    fontVariations: [
      FontVariation('ital', 1),
      FontVariation('wght', 100),
      FontVariation('wght', 200),
      FontVariation('wght', 300),
      FontVariation('wght', 500),
      FontVariation('wght', 600),
      FontVariation('wght', 700),
      FontVariation('wght', 800),
      FontVariation('wght', 900),
    ],
  );

  static const bodySmall = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 12,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.004 * 12,
    height: 16 / 12,
    color: jetBlackColor,
    fontVariations: [
      FontVariation('ital', 1),
      FontVariation('wght', 100),
      FontVariation('wght', 200),
      FontVariation('wght', 300),
      FontVariation('wght', 500),
      FontVariation('wght', 600),
      FontVariation('wght', 700),
      FontVariation('wght', 800),
      FontVariation('wght', 900),
    ],
  );

  static const errorHintText = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 14,
    color: pantonRedColor,
    fontWeight: FontWeight.w400,
  );

  static const errorText = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 12,
    color: pantonRedColor,
    fontWeight: FontWeight.w400,
  );

/* *** *** Button Height *** *** */
  static const double buttonHeight = 50;
  static const double headerButtonHeight = 35;
  static const double formFieldHeight = 50;

/* *** *** Paddings *** *** */

  //tiny Padding

  static double tinyWidth({
    required double width,
  }) {
    return width * 0.0087;
  }

  static double tinyHeight({
    required double height,
  }) {
    return height * 0.004;
  }

  static EdgeInsetsDirectional tinyStartPadding({
    required double width,
  }) {
    return EdgeInsetsDirectional.only(start: tinyWidth(width: width));
  }

  static EdgeInsetsDirectional tinyEndPadding({
    required double width,
  }) {
    return EdgeInsetsDirectional.only(end: tinyWidth(width: width));
  }

  static EdgeInsetsDirectional tinyTopPadding({
    required double height,
  }) {
    return EdgeInsetsDirectional.only(top: tinyHeight(height: height));
  }

  static EdgeInsetsDirectional tinyBottomPadding({
    required double height,
  }) {
    return EdgeInsetsDirectional.only(bottom: tinyHeight(height: height));
  }

  static EdgeInsetsDirectional tinyHorizontalPadding({
    required double width,
  }) {
    return EdgeInsetsDirectional.symmetric(horizontal: tinyWidth(width: width));
  }

  static EdgeInsetsDirectional tinyVerticalPadding({
    required double height,
  }) {
    return EdgeInsetsDirectional.symmetric(
        vertical: tinyHeight(height: height));
  }

  static EdgeInsetsDirectional tinyAllPadding(
      {required double width, required double height}) {
    return EdgeInsetsDirectional.symmetric(
      horizontal: tinyWidth(width: width),
      vertical: tinyHeight(height: height),
    );
  }

  //xSmall Padding

  static double xSmallWidth({
    required double width,
  }) {
    return width * 0.017;
  }

  static double xSmallHeight({
    required double height,
  }) {
    return height * 0.008;
  }

  static EdgeInsetsDirectional xSmallStartPadding({
    required double width,
  }) {
    return EdgeInsetsDirectional.only(start: xSmallWidth(width: width));
  }

  static EdgeInsetsDirectional xSmallEndPadding({
    required double width,
  }) {
    return EdgeInsetsDirectional.only(end: xSmallWidth(width: width));
  }

  static EdgeInsetsDirectional xSmallTopPadding({
    required double height,
  }) {
    return EdgeInsetsDirectional.only(top: xSmallHeight(height: height));
  }

  static EdgeInsetsDirectional xSmallBottomPadding({
    required double height,
  }) {
    return EdgeInsetsDirectional.only(bottom: xSmallHeight(height: height));
  }

  static EdgeInsetsDirectional xSmallHorizontalPadding({
    required double width,
  }) {
    return EdgeInsetsDirectional.symmetric(
        horizontal: xSmallWidth(width: width));
  }

  static EdgeInsetsDirectional xSmallVerticalPadding({
    required double height,
  }) {
    return EdgeInsetsDirectional.symmetric(
        vertical: xSmallHeight(height: height));
  }

  static EdgeInsetsDirectional xSmallAllPadding(
      {required double width, required double height}) {
    return EdgeInsetsDirectional.symmetric(
      horizontal: xSmallWidth(width: width),
      vertical: xSmallHeight(height: height),
    );
  }

  //small Padding

  static double smallWidth({
    required double width,
  }) {
    return width * 0.026;
  }

  static double smallHeight({
    required double height,
  }) {
    return height * 0.012;
  }

  static EdgeInsetsDirectional smallStartPadding({
    required double width,
  }) {
    return EdgeInsetsDirectional.only(start: smallWidth(width: width));
  }

  static EdgeInsetsDirectional smallEndPadding({
    required double width,
  }) {
    return EdgeInsetsDirectional.only(end: smallWidth(width: width));
  }

  static EdgeInsetsDirectional smallTopPadding({
    required double height,
  }) {
    return EdgeInsetsDirectional.only(top: smallHeight(height: height));
  }

  static EdgeInsetsDirectional smallBottomPadding({
    required double height,
  }) {
    return EdgeInsetsDirectional.only(bottom: smallHeight(height: height));
  }

  static EdgeInsetsDirectional smallHorizontalPadding({
    required double width,
  }) {
    return EdgeInsetsDirectional.symmetric(
        horizontal: smallWidth(width: width));
  }

  static EdgeInsetsDirectional smallVerticalPadding({
    required double height,
  }) {
    return EdgeInsetsDirectional.symmetric(
        vertical: smallHeight(height: height));
  }

  static EdgeInsetsDirectional smallAllPadding(
      {required double width, required double height}) {
    return EdgeInsetsDirectional.symmetric(
      horizontal: smallWidth(width: width),
      vertical: smallHeight(height: height),
    );
  }

  //base Padding

  static double baseWidth({
    required double width,
  }) {
    return width * 0.035;
  }

  static double baseHeight({
    required double height,
  }) {
    return height * 0.016;
  }

  static EdgeInsetsDirectional baseStartPadding({
    required double width,
  }) {
    return EdgeInsetsDirectional.only(start: baseWidth(width: width));
  }

  static EdgeInsetsDirectional baseEndPadding({
    required double width,
  }) {
    return EdgeInsetsDirectional.only(end: baseWidth(width: width));
  }

  static EdgeInsetsDirectional baseTopPadding({
    required double height,
  }) {
    return EdgeInsetsDirectional.only(top: baseHeight(height: height));
  }

  static EdgeInsetsDirectional baseBottomPadding({
    required double height,
  }) {
    return EdgeInsetsDirectional.only(bottom: baseHeight(height: height));
  }

  static EdgeInsetsDirectional baseHorizontalPadding({
    required double width,
  }) {
    return EdgeInsetsDirectional.symmetric(horizontal: baseWidth(width: width));
  }

  static EdgeInsetsDirectional baseVerticalPadding({
    required double height,
  }) {
    return EdgeInsetsDirectional.symmetric(
        vertical: baseHeight(height: height));
  }

  static EdgeInsetsDirectional baseAllPadding(
      {required double width, required double height}) {
    return EdgeInsetsDirectional.symmetric(
      horizontal: baseWidth(width: width),
      vertical: baseHeight(height: height),
    );
  }

  //medium Padding

  static double mediumWidth({
    required double width,
  }) {
    return width * 0.043;
  }

  static double mediumHeight({
    required double height,
  }) {
    return height * 0.02;
  }

  static EdgeInsetsDirectional mediumStartPadding({
    required double width,
  }) {
    return EdgeInsetsDirectional.only(start: mediumWidth(width: width));
  }

  static EdgeInsetsDirectional mediumEndPadding({
    required double width,
  }) {
    return EdgeInsetsDirectional.only(end: mediumWidth(width: width));
  }

  static EdgeInsetsDirectional mediumTopPadding({
    required double height,
  }) {
    return EdgeInsetsDirectional.only(top: mediumHeight(height: height));
  }

  static EdgeInsetsDirectional mediumBottomPadding({
    required double height,
  }) {
    return EdgeInsetsDirectional.only(bottom: mediumHeight(height: height));
  }

  static EdgeInsetsDirectional mediumHorizontalPadding({
    required double width,
  }) {
    return EdgeInsetsDirectional.symmetric(
        horizontal: mediumWidth(width: width));
  }

  static EdgeInsetsDirectional mediumVerticalPadding({
    required double height,
  }) {
    return EdgeInsetsDirectional.symmetric(
        vertical: mediumHeight(height: height));
  }

  static EdgeInsetsDirectional mediumAllPadding(
      {required double width, required double height}) {
    return EdgeInsetsDirectional.symmetric(
      horizontal: mediumWidth(width: width),
      vertical: mediumHeight(height: height),
    );
  }

  //large Padding

  static double largeWidth({
    required double width,
  }) {
    return width * 0.052;
  }

  static double largeHeight({
    required double height,
  }) {
    return height * 0.024;
  }

  static EdgeInsetsDirectional largeStartPadding({
    required double width,
  }) {
    return EdgeInsetsDirectional.only(start: largeWidth(width: width));
  }

  static EdgeInsetsDirectional largeEndPadding({
    required double width,
  }) {
    return EdgeInsetsDirectional.only(end: largeWidth(width: width));
  }

  static EdgeInsetsDirectional largeTopPadding({
    required double height,
  }) {
    return EdgeInsetsDirectional.only(top: largeHeight(height: height));
  }

  static EdgeInsetsDirectional largeBottomPadding({
    required double height,
  }) {
    return EdgeInsetsDirectional.only(bottom: largeHeight(height: height));
  }

  static EdgeInsetsDirectional largeHorizontalPadding({
    required double width,
  }) {
    return EdgeInsetsDirectional.symmetric(
        horizontal: largeWidth(width: width));
  }

  static EdgeInsetsDirectional largeVerticalPadding({
    required double height,
  }) {
    return EdgeInsetsDirectional.symmetric(
        vertical: largeHeight(height: height));
  }

  static EdgeInsetsDirectional largeAllPadding(
      {required double width, required double height}) {
    return EdgeInsetsDirectional.symmetric(
      horizontal: largeWidth(width: width),
      vertical: largeHeight(height: height),
    );
  }

  //xLarge Padding

  static double xLargeWidth({
    required double width,
  }) {
    return width * 0.069;
  }

  static double xLargeHeight({
    required double height,
  }) {
    return height * 0.032;
  }

  static EdgeInsetsDirectional xLargeStartPadding({
    required double width,
  }) {
    return EdgeInsetsDirectional.only(start: xLargeWidth(width: width));
  }

  static EdgeInsetsDirectional xLargeEndPadding({
    required double width,
  }) {
    return EdgeInsetsDirectional.only(end: xLargeWidth(width: width));
  }

  static EdgeInsetsDirectional xLargeTopPadding({
    required double height,
  }) {
    return EdgeInsetsDirectional.only(top: xLargeHeight(height: height));
  }

  static EdgeInsetsDirectional xLargeBottomPadding({
    required double height,
  }) {
    return EdgeInsetsDirectional.only(bottom: xLargeHeight(height: height));
  }

  static EdgeInsetsDirectional xLargeHorizontalPadding({
    required double width,
  }) {
    return EdgeInsetsDirectional.symmetric(
        horizontal: xLargeWidth(width: width));
  }

  static EdgeInsetsDirectional xLargeVerticalPadding({
    required double height,
  }) {
    return EdgeInsetsDirectional.symmetric(
        vertical: xLargeHeight(height: height));
  }

  static EdgeInsetsDirectional xLargeAllPadding(
      {required double width, required double height}) {
    return EdgeInsetsDirectional.symmetric(
      horizontal: xLargeWidth(width: width),
      vertical: xLargeHeight(height: height),
    );
  }

  //huge Padding

  static double hugeWidth({
    required double width,
  }) {
    return width * 0.087;
  }

  static double hugeHeight({
    required double height,
  }) {
    return height * 0.04;
  }

  static EdgeInsetsDirectional hugeStartPadding({
    required double width,
  }) {
    return EdgeInsetsDirectional.only(start: hugeWidth(width: width));
  }

  static EdgeInsetsDirectional hugeEndPadding({
    required double width,
  }) {
    return EdgeInsetsDirectional.only(end: hugeWidth(width: width));
  }

  static EdgeInsetsDirectional hugeTopPadding({
    required double height,
  }) {
    return EdgeInsetsDirectional.only(top: hugeHeight(height: height));
  }

  static EdgeInsetsDirectional hugeBottomPadding({
    required double height,
  }) {
    return EdgeInsetsDirectional.only(bottom: hugeHeight(height: height));
  }

  static EdgeInsetsDirectional hugeHorizontalPadding({
    required double width,
  }) {
    return EdgeInsetsDirectional.symmetric(horizontal: hugeWidth(width: width));
  }

  static EdgeInsetsDirectional hugeVerticalPadding({
    required double height,
  }) {
    return EdgeInsetsDirectional.symmetric(
        vertical: hugeHeight(height: height));
  }

  static EdgeInsetsDirectional hugeAllPadding(
      {required double width, required double height}) {
    return EdgeInsetsDirectional.symmetric(
      horizontal: hugeWidth(width: width),
      vertical: hugeHeight(height: height),
    );
  }

  static EdgeInsetsDirectional errorContainerPadding({
    required double width,
    required double height,
  }) {
    return EdgeInsetsDirectional.only(
      start: largeWidth(width: width),
      end: largeWidth(width: width),
      top: xSmallHeight(height: height),
    );
  }

  static EdgeInsets outerDialogPadding({
    required double width,
    required double height,
    required double safeAreaBottomHeigth,
    required double? customHeightRatio,
  }) {
    return EdgeInsets.only(
      left: width * 0.0156,
      right: width * 0.0156,
      bottom: safeAreaBottomHeigth > 0
          ? safeAreaBottomHeigth * 0.55
          : height * 0.0075,
      top: customHeightRatio != null
          ? height * (1 - customHeightRatio)
          : height * 0.055,
    );
  }

  static EdgeInsetsDirectional innerDialogPadding(
      {required double width, required double height}) {
    return EdgeInsetsDirectional.only(
      start: width * 0.0469,
      end: width * 0.0469,
      bottom: height * 0.0225,
    );
  }

/* *** *** Extentions *** *** */
  static double diameter({
    required double width,
    required double height,
    required double widthRatio,
    required double heightRatio,
  }) {
    return radius(
          width: width,
          height: height,
          widthRatio: widthRatio,
          heightRatio: heightRatio,
        ) *
        2;
  }

  static double radius({
    required double width,
    required double height,
    required double widthRatio,
    required double heightRatio,
  }) {
// Let the radius of the circle be r
// Let the height and width of the arc be h & d
// Now, the diameter DC bisects the chord AB in two halves, each having length d/2
// Also the diameter is divided by the chord in two parts, the part inside arc h and the remaining 2r-h
// Now from intersecting chords theorem,
// h*(2r-h) = (d/2)^2
// or, 2rh – h^2 = d^2/4
// so, r = d^2/8h + h/2
    return (((width * widthRatio) * (width * widthRatio)) /
            (8 * ((height * heightRatio) / 2)) +
        ((height * heightRatio) / 2) / 2);
  }
}
