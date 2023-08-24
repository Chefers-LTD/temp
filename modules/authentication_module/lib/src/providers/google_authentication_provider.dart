import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';

final googleAuthenticationProvider = Provider<GoogleSignIn>((ref) {
  return GoogleSignIn(
      clientId: kIsWeb
          ? "648511225837-6phbufr2frtrinlv7jdhp3cqcm03047q.apps.googleusercontent.com"
          : null);
});
