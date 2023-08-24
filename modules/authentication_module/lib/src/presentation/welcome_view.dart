import 'package:authentication_module/src/presentation/email_form_view.dart';
import 'package:authentication_module/src/presentation/presenter/controller/welcome_controller.dart';
import 'package:authentication_module/src/presentation/presenter/providers/welcome_viewmodel_provider.dart';
import 'package:authentication_module/src/presentation/presenter/view_models/access_form_viewmodel.dart';
import 'package:authentication_module/src/presentation/presenter/providers/google_sign_in_viewmodel_provider.dart';
import 'package:core_module/adapters.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'presenter/providers/access_form_viewmodel_provider.dart';

class WelcomeView extends ConsumerStatefulWidget {
  const WelcomeView({
    Key? key,
    required this.width,
    required this.height,
    required this.isDesktop,
    required this.isMobile,
    required this.isTablet,
    required this.isWeb,
  }) : super(key: key);

  final bool isWeb;
  final bool isMobile;
  final bool isTablet;
  final bool isDesktop;
  final double width;
  final double height;

  @override
  WelcomeViewState createState() => WelcomeViewState();
}

class WelcomeViewState extends ConsumerState<WelcomeView> {
  // final WelcomeController controller = WelcomeController();
  late ScrollController _listScrollController;

  @override
  void initState() {
    super.initState();
    _listScrollController = ScrollController();
  }

  @override
  void dispose() {
    _listScrollController.dispose();

    super.dispose();
  }

  final WelcomeController controller = WelcomeController();

  @override
  Widget build(BuildContext context) {
    /* *** *** Access Form ViewModels *** *** */
    final AccessFormViewModel accessFormViewModel =
        ref.watch(accessFormViewModelProvider);
    final bool welcomeViewModel = ref.watch(welcomeViewModelProvider);

    /* *** *** Social Auth ViewModels *** *** */
    final bool googleSignInViewModel = ref.watch(googleSignInViewModelProvider);

    /* *** *** Build *** *** */
    return Center(
      child: Container(
        width: widget.isDesktop ? (525 / 1440) * widget.width : widget.width,
        child: ListView(
          primary: false,
          shrinkWrap: false,
          controller: _listScrollController,
          padding: widget.isDesktop
              ? null
              : Constant.largeHorizontalPadding(
                  width: widget.width,
                ),
          physics: const NeverScrollableScrollPhysics(),
          children: [
            Padding(
              padding: Constant.largeTopPadding(height: widget.height),
              child: Text(
                "Temp test authentication",
                style: Theme.of(context).textTheme.titleLarge,
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: widget.isDesktop
                  ? EdgeInsets.only(top: (20 / 900) * widget.height)
                  : Constant.baseTopPadding(
                      height: widget.height,
                    ),
              child: Text(
                "Enter Email",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            EmailFormView(
              isDesktop: widget.isDesktop,
              controller: controller,
              width: widget.width,
              height: widget.height,
            ),
            Padding(
              padding: Constant.baseTopPadding(
                height: widget.height,
              ),
              child: PrimaryButton(
                header: false,
                disabled: false,
                margin: false,
                width: widget.width,
                loading: welcomeViewModel,
                onTap: () =>
                    ref.read(welcomeViewModelProvider.notifier).verifyEmail(
                          context: context,
                          width: widget.width,
                          height: widget.height,
                          formKeyEmail: controller.formKeyEmail,
                          email: controller.emailController.text,
                          accessFormViewModel: accessFormViewModel,
                          ref: ref,
                        ),
                text: 'fetchSignInMethodsForEmail()',
              ),
            ),
            Padding(
              padding: Constant.largeTopPadding(
                height: widget.height,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 4),
                      child: Divider(
                        thickness: 1,
                        endIndent: Constant.tinyWidth(width: widget.width),
                        color: Constant.silverColor,
                      ),
                    ),
                  ),
                  Text(
                    'or',
                    style: Theme.of(context).textTheme.labelSmall!.copyWith(
                          color: Constant.grayColor,
                        ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 4),
                      child: Divider(
                        thickness: 1,
                        indent: Constant.tinyWidth(width: widget.width),
                        color: Constant.silverColor,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: Constant.largeTopPadding(
                height: widget.height,
              ),
              child: SecondaryButton(
                onTap: () => googleSignInViewModel
                    ? null
                    : ref
                        .read(googleSignInViewModelProvider.notifier)
                        .continueWithGoogle(
                          context: context,
                          width: widget.width,
                          height: widget.height,
                          accessFormViewModel: accessFormViewModel,
                          ref: ref,
                        ),
                icon: Image.asset(
                  'assets/icons/google_icon.png',
                  width: 25,
                  fit: BoxFit.contain,
                ),
                loading: googleSignInViewModel,
                disabled: false,
                margin: false,
                width: widget.width,
                text: 'Continue with Google',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
