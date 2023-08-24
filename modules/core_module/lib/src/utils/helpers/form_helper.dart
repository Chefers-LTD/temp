import 'package:flutter/widgets.dart';

mixin FormHelper {
  void onEditingComplete(GlobalKey<FormFieldState> formKey) {
    formKey.currentState!.validate();
  }

  void fieldFocusChange(
      BuildContext context, FocusNode currentFocus, FocusNode nextFocus) {
    currentFocus.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }
}
