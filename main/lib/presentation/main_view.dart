import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:temp/presentation/presenter/providers/main_key_provider.dart';
import 'package:temp/presentation/presenter/providers/main_provider.dart';

/// Wrap your root App widget in this widget and call [mainViewModel.rebirth] to restart your app.
class MainView extends ConsumerStatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  MainViewState createState() => MainViewState();
}

class MainViewState extends ConsumerState<MainView> {
  @override
  Widget build(BuildContext context) {
    return KeyedSubtree(
      key: ref.read(mainKeyProvider),
      child: ref.watch(mainProvider)!,
    );
  }
}
