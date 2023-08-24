import 'package:authentication_module/src/presentation/presenter/controller/welcome_controller.dart';
import 'package:authentication_module/src/presentation/presenter/providers/access_form_viewmodel_provider.dart';
import 'package:authentication_module/src/presentation/presenter/providers/welcome_viewmodel_provider.dart';
import 'package:authentication_module/src/presentation/presenter/view_models/access_form_viewmodel.dart';
import 'package:core_module/adapters.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_field_validator/form_field_validator.dart';

class EmailFormView extends ConsumerStatefulWidget {
  const EmailFormView({
    Key? key,
    required this.isDesktop,
    required this.width,
    required this.height,
    required this.controller,
  }) : super(key: key);

  final bool isDesktop;
  final double width;
  final double height;
  final WelcomeController controller;

  @override
  EmailFormViewState createState() => EmailFormViewState();
}

class EmailFormViewState extends ConsumerState<EmailFormView> {
  @override
  Widget build(BuildContext context) {
    /* *** *** Access Form ViewModels *** *** */
    final AccessFormViewModel accessFormViewModel =
        ref.watch(accessFormViewModelProvider);

    return Form(
      key: widget.controller.formKeyEmail,
      child: Column(
        children: [
          Padding(
            padding: Constant.xSmallTopPadding(
              height: widget.height,
            ),
            child: PrimaryTextFormField(
              margin: false,
              context: context,
              hintText: 'john@doe.com',
              labelText: 'Email',
              controller: widget.controller.emailController,
              focusNode: widget.controller.emailNode,
              width: widget.width,
              height: widget.height,
              inputFormatter: const [],
              keyboard: TextInputType.emailAddress,
              formValidator: RequiredValidator(
                errorText: 'Email required!',
              ),
              obscure: false,
              onSubmitted: (val) {
                ref.read(welcomeViewModelProvider.notifier).verifyEmail(
                      context: context,
                      width: widget.width,
                      height: widget.height,
                      formKeyEmail: widget.controller.formKeyEmail,
                      email: widget.controller.emailController.text,
                      accessFormViewModel: accessFormViewModel,
                      ref: ref,
                    );
                widget.controller.emailNode.unfocus();
              },
              textInputAction: TextInputAction.done,
              suffix: false,
              isDesktop: widget.isDesktop,
            ),
          ),
        ],
      ),
    );
  }
}
