import 'package:core_module/src/components/widget/scale_tap/scale_tap.dart';
import 'package:core_module/src/theme/constants.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    required this.onTap,
    required this.text,
    required this.loading,
    required this.disabled,
    required this.margin,
    required this.width,
    required this.header,
    this.trailingIcon,
  }) : super(key: key);

  final void Function()? onTap;
  final String text;
  final bool loading;
  final bool disabled;
  final bool margin;
  final double width;
  final bool header;
  final Widget? trailingIcon;

  /* *** *** Build *** *** */
  @override
  Widget build(BuildContext context) {
    return ScaleTap(
      onTap: disabled
          ? null
          : loading
              ? null
              : onTap,
      child: Container(
        margin: margin
            ? Constant.largeHorizontalPadding(
                width: width,
              )
            : null,
        height: header
            ? Constant.headerButtonHeight
            : Theme.of(context).buttonTheme.height,
        decoration: BoxDecoration(
          color: disabled
              ? Theme.of(context).disabledColor
              : Constant.castletonGreenColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            loading
                ? CircularProgressIndicator(
                    color: Constant.whiteColor,
                  )
                : Text(
                    text,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          height: 1,
                        ),
                  ),
            Align(
              alignment: AlignmentDirectional.centerEnd,
              child: Padding(
                padding: EdgeInsetsDirectional.only(end: 30),
                child: trailingIcon,
              ),
            )
          ],
        ),
      ),
    );
  }
}
