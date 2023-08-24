import 'package:core_module/src/theme/constants.dart';
import 'package:flutter/material.dart';

class PrimaryDialog {
  static Future<dynamic> initiateDialog({
    required BuildContext context,
    required double width,
    required double height,
    required Widget child,
    bool dismissable = true,
    double? customHeightRatio,
  }) {
    return showModalBottomSheet(
      useRootNavigator: true,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      barrierColor: Theme.of(context).colorScheme.secondary.withOpacity(0.6),
      context: context,
      builder: (context) => GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => dismissable ? Navigator.of(context).pop() : null,
        child: Dialog(
          insetPadding: Constant.outerDialogPadding(
            safeAreaBottomHeigth: MediaQuery.of(context).padding.bottom,
            width: width,
            height: height,
            customHeightRatio: customHeightRatio,
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: Constant.smallVerticalPadding(
                  height: height,
                ),
                child: Divider(
                  height: 3,
                  indent: width * 0.359,
                  endIndent: width * 0.359,
                  thickness: 3,
                ),
              ),
              Expanded(
                child: child,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
