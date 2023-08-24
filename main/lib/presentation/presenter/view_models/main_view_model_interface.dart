import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class MainViewModelInterface {
  Future<void> initialize({required ProviderContainer container});
  Future<void> rebirth({required WidgetRef ref});
}
