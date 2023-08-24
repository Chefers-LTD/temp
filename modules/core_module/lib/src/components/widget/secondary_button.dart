import 'package:core_module/src/components/widget/scale_tap/scale_tap.dart';
import 'package:core_module/src/theme/constants.dart';
import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({
    Key? key,
    required this.onTap,
    this.text,
    this.icon,
    required this.loading,
    required this.disabled,
    required this.margin,
    required this.width,
  }) : super(key: key);

  final void Function()? onTap;
  final String? text;
  final Widget? icon;
  final bool loading;
  final bool disabled;
  final bool margin;
  final double width;

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
            ? Constant.smallHorizontalPadding(
                width: width,
              )
            : null,
        height: Theme.of(context).buttonTheme.height,
        decoration: BoxDecoration(
          color: Constant.antiFlashWhite,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Stack(
          children: [
            if (icon != null)
              Align(
                alignment: text == null
                    ? AlignmentDirectional.center
                    : AlignmentDirectional.centerStart,
                child: Padding(
                  padding: text != null
                      ? Constant.xSmallStartPadding(width: width)
                      : Constant.xSmallHorizontalPadding(width: width),
                  child: icon,
                ),
              ),
            if (text != null)
              Align(
                alignment: AlignmentDirectional.center,
                child: loading
                    ? Padding(
                        padding: const EdgeInsets.all(5),
                        child: CircularProgressIndicator(
                          color: Constant.jetBlackColor,
                        ),
                      )
                    : Text(
                        text!,
                        style: disabled
                            ? Theme.of(context).textTheme.bodySmall!.copyWith(
                                color: Theme.of(context).disabledColor,
                                fontWeight: FontWeight.w600)
                            : Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(fontWeight: FontWeight.w600),
                        textAlign: TextAlign.end,
                      ),
              ),
          ],
        ),
      ),
    );
  }
}
