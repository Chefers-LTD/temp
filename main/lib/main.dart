import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:temp/presentation/main_view.dart';
import 'package:temp/presentation/presenter/providers/main_provider.dart';

void main() async {
  final ProviderContainer container = ProviderContainer();
  await container.read(mainProvider.notifier).initialize(container: container);
  runApp(
    UncontrolledProviderScope(
      container: container,
      child: const MainView(),
    ),
  );
}
