import 'package:authentication_module/src/presentation/presenter/view_models/access_form_viewmodel.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final accessFormViewModelProvider =
    ChangeNotifierProvider.autoDispose<AccessFormViewModel>((ref) {
  return AccessFormViewModel();
});
