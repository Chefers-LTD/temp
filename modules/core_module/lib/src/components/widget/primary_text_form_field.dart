import 'package:core_module/src/theme/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PrimaryTextFormField extends FormField<String> {
  final BuildContext context;
  final bool isDesktop;
  final double width;
  final double height;
  final FormFieldValidator<String> formValidator;
  final bool obscure;
  final FocusNode? focusNode;
  final TextInputType keyboard;
  final TextInputAction textInputAction;
  final void Function(String) onSubmitted;
  final TextEditingController? controller;
  final List<TextInputFormatter> inputFormatter;
  final String hintText;
  final String labelText;
  final bool margin;
  final bool multiLine;
  final double? fieldWidth;
  final bool suffix;
  final Widget? suffixWidget;
  PrimaryTextFormField({
    Key? key,
    required this.context,
    required this.isDesktop,
    required this.width,
    required this.height,
    required this.labelText,
    required this.hintText,
    required this.onSubmitted,
    required this.formValidator,
    required this.obscure,
    required this.focusNode,
    required this.keyboard,
    required this.textInputAction,
    required this.controller,
    required this.inputFormatter,
    required this.margin,
    this.multiLine = false,
    this.fieldWidth,
    final String initialValue = '',
    required this.suffix,
    this.suffixWidget,
  }) : super(
          key: key,
          initialValue: initialValue,
          validator: formValidator,
          builder: (FormFieldState state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  child: Container(
                    height: multiLine
                        ? (isDesktop ? (200 / 900) : (130 / 852)) * height
                        : Constant.formFieldHeight,
                    width: fieldWidth != null ? width * fieldWidth : null,
                    margin: margin
                        ? Constant.largeHorizontalPadding(
                            width: width,
                          )
                        : null,

                    padding: EdgeInsets.symmetric(horizontal: 15),

                    //  Constant.smallHorizontalPadding(
                    //   width: width,
                    // ),
                    decoration: BoxDecoration(
                      color: Constant.whiteColor,
                      border: Border.all(
                          color: state.hasError
                              ? Constant.pantonRedColor
                              : Constant.platinumColor,
                          width: 2),
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Stack(
                      alignment:
                          multiLine ? Alignment.topCenter : Alignment.center,
                      children: [
                        TextFormField(
                          cursorColor: Theme.of(context).primaryColor,
                          // onTap: onTap,
                          inputFormatters: inputFormatter,
                          controller: controller,
                          onFieldSubmitted: onSubmitted,
                          onChanged: state.didChange,
                          focusNode: focusNode,
                          textInputAction: textInputAction,
                          keyboardType: keyboard,
                          obscureText: obscure,
                          maxLines: multiLine ? 3 : 1,
                          minLines: multiLine ? 3 : null,
                          style:
                              Theme.of(context).textTheme.titleMedium?.copyWith(
                                    height: 1,
                                    fontWeight: FontWeight.w500,
                                  ),
                          decoration: InputDecoration(
                            contentPadding: multiLine
                                ? null
                                : EdgeInsets.symmetric(vertical: 7),
                            label: Text(
                              labelText,
                              style: state.hasError
                                  ? Theme.of(context)
                                      .inputDecorationTheme
                                      .labelStyle
                                      ?.copyWith(color: Constant.pantonRedColor)
                                  : Theme.of(context)
                                      .inputDecorationTheme
                                      .labelStyle,
                            ),
                            hintText: hintText,
                            hintStyle: Theme.of(context)
                                .inputDecorationTheme
                                .hintStyle,
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                          ),
                        ),
                        if (suffix)
                          Align(
                              alignment: AlignmentDirectional.centerEnd,
                              child: suffixWidget),
                      ],
                    ),
                  ),
                ),
                if (state.hasError)
                  Container(
                    height: 50,
                    margin: margin
                        ? Constant.errorContainerPadding(
                            width: width,
                            height: height,
                          )
                        : Constant.xSmallTopPadding(
                            height: height,
                          ),
                    padding: Constant.smallHorizontalPadding(
                      width: width,
                    ),
                    decoration: BoxDecoration(
                      color: Constant.pantonRedColor.withOpacity(0.15),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Row(
                      children: [
                        Text(
                          state.errorText.toString(),
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall
                              ?.copyWith(color: Constant.pantonRedColor),
                        ),
                      ],
                    ),
                  ),
              ],
            );
          },
        );
}
