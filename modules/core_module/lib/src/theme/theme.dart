import 'package:core_module/src/theme/constants.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

class AppTheme {
  static final ThemeData chefsMainTheme = ThemeData(
    primaryColor: Constant.bronzeColor,
    scaffoldBackgroundColor: Constant.whiteColor,
    // appBarTheme: const AppBarTheme(
    //   color: Constant.whiteColor,
    //   elevation: 0,
    //   centerTitle: false,
    //   titleTextStyle: Constant.header1,
    //   toolbarTextStyle: Constant.bodyText2Alt,
    //   systemOverlayStyle: SystemUiOverlayStyle(
    //     systemNavigationBarColor: Constant.blackColor,
    //     systemNavigationBarDividerColor: Constant.blackColor,
    //     systemNavigationBarIconBrightness: Brightness.dark,
    //     statusBarColor: Constant.blackColor,
    //     statusBarBrightness: Brightness.light,
    //     statusBarIconBrightness: Brightness.dark,
    //   ),
    // ),
    colorScheme: ThemeData().colorScheme.copyWith(
          background: Colors.white,
          primary: Constant.jetBlackColor,
          secondary: Constant.jetBlackColor,
        ),
    textTheme: TextTheme(
      displayLarge: Constant.displayLarge,
      displayMedium: Constant.displayMedium,
      displaySmall: Constant.displaySmall,
      headlineLarge: Constant.headlineLarge,
      headlineMedium: Constant.headlineMedium,
      headlineSmall: Constant.headlineSmall,
      titleLarge: Constant.titleLarge,
      titleMedium: Constant.titleMedium,
      titleSmall: Constant.titleSmall,
      bodyLarge: Constant.bodyLarge,
      bodyMedium: Constant.bodyMedium,
      bodySmall: Constant.bodySmall,
      labelLarge: Constant.labelLarge,
      labelMedium: Constant.labelMedium,
      labelSmall: Constant.labelSmall,
    ),
    buttonTheme: const ButtonThemeData(
      height: Constant.buttonHeight,
    ),
    inputDecorationTheme: InputDecorationTheme(
      labelStyle:
          Constant.titleMedium.copyWith(fontWeight: FontWeight.w500, height: 1),
      hintStyle: Constant.labelLarge.copyWith(
        color: Constant.grayColor,
        height: 1.75,
      ),
      fillColor: Constant.whiteColor,
    ),
    // bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    //   showSelectedLabels: true,
    //   showUnselectedLabels: true,
    //   selectedItemColor: Constant.brandColor,
    //   unselectedItemColor: Constant.blackColor,
    //   selectedLabelStyle: Constant.selectedLabelText,
    //   unselectedLabelStyle: Constant.unselectedLabelText,
    //   type: BottomNavigationBarType.fixed,
    //   backgroundColor: Constant.whiteColor,
    //   selectedIconTheme: IconThemeData(
    //     size: 22,
    //     color: Constant.brandColor,
    //   ),
    //   unselectedIconTheme: IconThemeData(
    //     size: 22,
    //     color: Constant.blackColor,
    //   ),
    // ),
    // cupertinoOverrideTheme: const NoDefaultCupertinoThemeData(
    //   textTheme: CupertinoTextThemeData(
    //     navLargeTitleTextStyle: Constant.header1,
    //     navTitleTextStyle: Constant.header3,
    //   ),
    // ),
  );
}
