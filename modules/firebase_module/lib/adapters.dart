//Firebase
export 'package:firebase_core/firebase_core.dart' show FirebaseApp;
export 'package:firebase_auth/firebase_auth.dart'
    show
        FirebaseAuth,
        UserCredential,
        User,
        AuthCredential,
        EmailAuthProvider,
        OAuthProvider,
        ConfirmationResult,
        FirebaseAuthException;

//UseCases
export 'src/use_cases/get_firebase_app_instance.dart'
    show GetFirebaseAppInstance;

//Interfaces
export 'src/data_sources/firebase_data_source_interface.dart'
    show FirebaseDataSourceInterface;

//Providers
export 'src/providers.dart'
    show
        firebaseProvider,
        getFirebaseAppInstanceProvider,
        firebaseAuthenticationServiceProvider,
        firebaseUserProvider,
        firebaseGoogleAuthenticationProvider,
        firebaseFacebookAuthenticationProvider,
        firebaseAppleAuthenticationProvider;
