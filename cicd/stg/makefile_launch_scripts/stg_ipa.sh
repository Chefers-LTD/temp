#!/usr/bin/env bash 
source .stg.env
cd main
flutter build ipa --export-options-plist=ios/exportOptions.plist -t lib/main.dart\
	--flavor=stg\
	--dart-define=ENV=stg\
    --dart-define=FIREBASE_ANDROID_APP_ID=${FIREBASE_ANDROID_APP_ID}\
    --dart-define=FIREBASE_ANDROID_CLIENT_ID=${FIREBASE_ANDROID_CLIENT_ID}\
    --dart-define=FIREBASE_ANDROID_API_KEY=${FIREBASE_ANDROID_API_KEY}\
    --dart-define=FIREBASE_IOS_API_KEY=${FIREBASE_IOS_API_KEY}\
    --dart-define=FIREBASE_IOS_APP_ID=${FIREBASE_IOS_APP_ID}\
    --dart-define=FIREBASE_IOS_BUNDLE_ID=${FIREBASE_IOS_BUNDLE_ID}\
    --dart-define=FIREBASE_IOS_CLIENT_ID=${FIREBASE_IOS_CLIENT_ID}\
    --dart-define=FIREBASE_MESSAGING_SENDER_ID=${FIREBASE_MESSAGING_SENDER_ID}\
    --dart-define=FIREBASE_PROJECT_ID=${FIREBASE_PROJECT_ID}\
    --dart-define=FIREBASE_STORAGE_BUCKET=${FIREBASE_STORAGE_BUCKET}\
    --dart-define=FIREBASE_VAPID_KEY=${FIREBASE_VAPID_KEY}\
    --dart-define=FIREBASE_WEB_API_KEY=${FIREBASE_WEB_API_KEY}\
    --dart-define=FIREBASE_WEB_APP_ID=${FIREBASE_WEB_APP_ID}\
    --dart-define=FIREBASE_WEB_AUTH_DOMAIN=${FIREBASE_WEB_AUTH_DOMAIN}\
    --dart-define=FIREBASE_WEB_MEASUREMENT_ID=${FIREBASE_WEB_MEASUREMENT_ID}