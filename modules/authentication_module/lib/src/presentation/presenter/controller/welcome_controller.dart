import 'package:flutter/widgets.dart';

class WelcomeController {
  final TextEditingController _emailController = TextEditingController();
  TextEditingController get emailController => _emailController;

  final FocusNode _emailNode = FocusNode();
  FocusNode get emailNode => _emailNode;

  final GlobalKey<FormFieldState> _emailFieldKey = GlobalKey<FormFieldState>();
  GlobalKey<FormFieldState> get emailFieldKey => _emailFieldKey;

  final GlobalKey<FormState> _formKeyEmail = GlobalKey<FormState>();
  GlobalKey<FormState> get formKeyEmail => _formKeyEmail;
}
