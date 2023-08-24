// import 'dart:developer';
// import 'dart:ui';

// import 'package:app_module/src/router/app_router.dart';
// import 'package:core_module/adapters.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:vrouter/vrouter.dart';

// class AppViewModel extends ChangeNotifier {
//   /* *** *** Constructor *** *** */
//   static final AppViewModel _instance = AppViewModel._internal();

//   factory AppViewModel() {
//     return _instance;
//   }
//   AppViewModel._internal();

//   /* *** *** Variables *** *** */
//   late bool _error;
//   late bool _connection;
//   late bool _loggedIn;
//   late String _initialUrl;
//   Locale? _locale;

//   /* *** *** Setters *** *** */
//   set loggedIn(bool loggedIn) {
//     _loggedIn = loggedIn;
//     notifyListeners();
//   }

//   set initialUrl(String initialUrl) {
//     _initialUrl = initialUrl;
//     notifyListeners();
//   }

//   set locale(Locale? locale) {
//     _locale = locale;
//     notifyListeners();
//   }

//   /* *** *** Getters *** *** */
//   bool get loggedIn => _loggedIn;
//   String get initialUrl => _initialUrl;
//   Locale? get locale => _locale;

//   /* *** *** Methods *** *** */

//   void initialState({
//     required bool loggedIn,
//     required bool connection,
//     required bool error,
//   }) {
//     // _loggedIn = loggedIn;
//     _loggedIn = true;
//     _connection = true;
//     _error = false;
//     // _connection = connection;
//     // _error = error;
//     if (_loggedIn && _connection && !_error) {
//       _initialUrl = '/';
//     } else {
//       if (!_connection) {
//         _initialUrl = '/connection-error';
//       } else if (_error) {
//         _initialUrl = '/start-up-error';
//       } else {
//         _initialUrl = '/access-form';
//       }
//     }
//   }

//   void setInitialLocal({
//     required WidgetRef ref,
//   }) {
//     List<String>? localePreferences;
//     try {
//       localePreferences = ref
//           .read(sharedPreferencesProvider)
//           .instance()
//           .getStringList("locale");
//     } catch (e) {
//       log(e.toString());
//     }
//     if (localePreferences != null) {
//       _locale = Locale(localePreferences[0], localePreferences[1]);
//     } else {
//       _locale =
//           Locale(window.locales[0].languageCode, window.locales[0].countryCode);
//     }
//   }

//   Future logoutUser({
//     required BuildContext context,
//     required WidgetRef ref,
//   }) async {
//     try {
//       await Future.wait([
//         ref.read(secureStorageProvider).remove(key: "jwt"),
//         ref.read(secureStorageProvider).remove(key: "rjwt"),
//       ]);
//       _loggedIn = false;
//       _initialUrl = '/access-form';
//       // EnvStatic.accessToken = null;
//       // EnvStatic.refreshToken = null;
//       notifyListeners();
//       context.vRouter.to('/access-form', isReplacement: true);
//     } catch (e) {
//       log(e.toString());
//     }
//   }

//   List<VRouteElement> routes() => [
//         AppRouter(appInstance: _instance),
//       ];
// }
