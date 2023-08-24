import 'package:app_module/adapters.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:temp/domain/use_cases/initialize_app.dart';
import 'package:temp/presentation/presenter/view_models/main_view_model_interface.dart';

class MainViewModel extends StateNotifier<Widget?>
    implements MainViewModelInterface {
  final InitializeApp _initializeApp;

  MainViewModel({
    required InitializeApp initializeApp,
  })  : _initializeApp = initializeApp,
        super(null);

  @override
  Future<void> initialize({required ProviderContainer container}) async {
    WidgetsFlutterBinding.ensureInitialized();
    final initializationResult = await _initializeApp.call();

    initializationResult.fold(
      (failureModel) {
        state = AppView(
          failureModel: failureModel,
        );
      },
      (initializationSuccess) {
        state = const AppView();
      },
    );
  }

  @override
  Future<void> rebirth({required WidgetRef ref}) async {
    final initializationResult = await _initializeApp.call();

    initializationResult.fold(
      (failureModel) {
        state = AppView(
          failureModel: failureModel,
        );
      },
      (initializationSuccess) {
        state = const AppView();
      },
    );
  }
}
