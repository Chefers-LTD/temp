# TEMP
 
### Run Project

1- Set up flutter (https://flutter.dev/docs/get-started/install).
   If you work on a mac have Xcode and Android Studio installed.
   For any other machine you will need Android Studio.
   Prefered IDE vscode.

   #### Android Studio:
   Install the Flutter package and Dart package.

   #### VS Code:
   Install the Flutter extension and Dart extension.

   Extract strings onto .arb files for localization i.e. l10n(localization) i18n(internationalization).

2- Pull the repository.

3- Run in the terminal the following command to get packages: 
   ```cd main && flutter pub get```
   to generate localization files run:
   ```cd main && flutter gen-l10n```
   if need be, to generate retrofit files(Api Services and Models) run:
   ```cd main && flutter pub run build_runner build --delete-conflicting-outputs```
   this step should be repeated in each module 
   ```cd module/x ...```
   or simply use the Makefile:
   ```make init```

4- On Android make sure to set the ```minSdkVersion``` & ```compileSdkVersion``` & ```targetSdkVersion``` as follows:
   ```
   temp/main/android/local.properties
              |flutter.minSdkVersion=24
              |flutter.compileSdkVersion=33
              |flutter.targetSdkVersion=33
   ```

5- Run app in dev mode using vscode launch settings or run ```make run_dev_debug```.

### To Run app in `dev` environment
#### Run app in debug mode (Picks up debug signing config)
```
	sh cicd/dev/makefile_launch_scripts/dev_debug.sh
```
#### Run app in profile mode (Picks up profile signing config)
```
	sh cicd/dev/makefile_launch_scripts/dev_profile.sh
```
#### Run app in release mode (Picks up release signing config)
```
	sh cicd/dev/makefile_launch_scripts/dev_release.sh
```
#### Create appBundle for Android platform. Runs in release mode by default.
```
	sh cicd/dev/makefile_launch_scripts/dev_appbundle.sh
``` 
#### Create APK for dev flavor. Runs in release mode by default.
```
	sh cicd/dev/makefile_launch_scripts/dev_apk.sh
``` 
#### Create IPA for dev flavor. Runs in release mode by default.
```
	sh cicd/dev/makefile_launch_scripts/dev_ipa.sh
``` 

### To Run app in `stg` environment
#### Run app in debug mode (Picks up debug signing config)
```
	sh cicd/stg/makefile_launch_scripts/stg_debug.sh
```
#### Run app in profile mode (Picks up profile signing config)
```
	sh cicd/stg/makefile_launch_scripts/stg_profile.sh
``` 
#### Run app in release mode (Picks up release signing config)
```
	sh cicd/stg/makefile_launch_scripts/stg_release.sh
``` 
#### Create appBundle for Android platform. Runs in release mode by default.
```
	sh cicd/stg/makefile_launch_scripts/stg_appbundle.sh
``` 
#### Create APK for stg flavor. Runs in release mode by default.
```
	sh cicd/stg/makefile_launch_scripts/stg_apk.sh
``` 
#### Create IPA for stg flavor. Runs in release mode by default.
```
	sh cicd/stg/makefile_launch_scripts/stg_ipa.sh
``` 

### To Run app in `prod` environment
#### Run app in debug mode (Picks up debug signing config)
```
	sh cicd/prod/makefile_launch_scripts/prod_debug.sh
``` 
#### Run app in profile mode (Picks up profile signing config)
```
	sh cicd/prod/makefile_launch_scripts/prod_profile.sh
``` 
#### Run app in release mode (Picks up release signing config)
```
	sh cicd/prod/makefile_launch_scripts/prod_release.sh
``` 
#### Create appBundle for Android platform. Runs in release mode by default.
```
	sh cicd/prod/makefile_launch_scripts/prod_appbundle.sh
``` 
#### Create APK for prod flavor. Runs in release mode by default.
```
	sh cicd/prod/makefile_launch_scripts/prod_apk.sh
``` 
#### Create IPA for prod flavor. Runs in release mode by default.
```
	sh cicd/prod/makefile_launch_scripts/prod_ipa.sh
``` 

### Download Firebase CLI
```curl -sL https://firebase.tools | bash```

#### Log-in Firebase & Initialize Firebase
```firebase login```
Log-in with credentials that have access to the app firebase projects

#### Activate flutterfire_cli globaly
```dart pub global activate flutterfire_cli```

#### Configure firebase dev environment
```
flutterfire config \
  --project=temp-dev \
  --out=lib/firebase_options/dev/firebase_options_dev.dart \
  --ios-bundle-id=temp.temp.dev \
  --macos-bundle-id=temp.temp.dev \
  --android-package-name=temp.temp.dev
```

#### Configure firebase stg environment
```
flutterfire config \
  --project=temp-stg \
  --out=lib/firebase_options/stg/firebase_options_stg.dart \
  --ios-bundle-id=temp.temp.stg \
  --macos-bundle-id=temp.temp.stg \
  --android-package-name=temp.temp.stg
```

#### Configure firebase prod environment
```
flutterfire config \
  --project=temp-prod \
  --out=lib/firebase_options/prod/firebase_options_prod.dart \
  --ios-bundle-id=temp.temp.prod \
  --macos-bundle-id=temp.temp.prod \
  --android-package-name=temp.temp.prod 
```

### Firebase Required Config Files Location

#### ADD Firebase Config Files iOS dev
```ios/Runner/Firebase/dev```
#### ADD Firebase Config Files iOS stg
```ios/Runner/Firebase/stg```
#### ADD Firebase Config Files iOS prod
```ios/Runner/Firebase/prod```

#### ADD Firebase Config Files macos dev
```macos/Runner/Firebase/dev```
#### ADD Firebase Config Files macos stg
```macos/Runner/Firebase/stg```
#### ADD Firebase Config Files macos prod
```macos/Runner/Firebase/prod```

#### ADD Firebase Config Files Android dev
```android/app/src/dev```
#### ADD Firebase Config Files Android stg
```android/app/src/stg```
#### ADD Firebase Config Files Android prod
```android/app```

### Allow the iOS App to find the correct GoogleService-Info.plist depending on the environment

#### Under the Build Phases in Xcode
```/TARGETS/Build Phases```

#### Under Link Binary With Libraries Create a New Run Script Phase with the name:
```Copy GoogleServices-Info.plist & firebase_app_id_file.json to the correct location```

#### Add the following script 

```
environment="default"

# Regex to extract the scheme name from the Build Configuration
# We have named our Build Configurations as Debug-dev, Debug-prod etc.
# Here, dev and prod are the scheme names. This kind of naming is required by Flutter for flavors to work.
# We are using the $CONFIGURATION variable available in the XCode build environment to extract 
# the environment (or flavor)
# For eg.
# If CONFIGURATION="Debug-prod", then environment will get set to "prod".
if [[ $CONFIGURATION =~ -([^-]*)$ ]]; then
environment=${BASH_REMATCH[1]}
fi

echo $environment

# Name and path of the resource we're copying
FIREBASE_APP_ID_JSON=firebase_app_id_file.json
FIREBASE_APP_ID_FILE=${PROJECT_DIR}/${TARGET_NAME}/Firebase/${environment}/${FIREBASE_APP_ID_JSON}

GOOGLESERVICE_INFO_PLIST=GoogleService-Info.plist
GOOGLESERVICE_INFO_FILE=${PROJECT_DIR}/${TARGET_NAME}/Firebase/${environment}/${GOOGLESERVICE_INFO_PLIST}

# Make sure GoogleService-Info.plist exists
echo "Looking for ${GOOGLESERVICE_INFO_PLIST} in ${GOOGLESERVICE_INFO_FILE}"
if [ ! -f $GOOGLESERVICE_INFO_FILE ]
then
echo "No GoogleService-Info.plist found. Please ensure it's in the proper directory."
exit 1
fi

# Make sure firebase_app_id_file.json exists
echo "Looking for ${FIREBASE_APP_ID_JSON} in ${FIREBASE_APP_ID_FILE}"
if [ ! -f $FIREBASE_APP_ID_FILE ]
then
echo "No firebase_app_id_file.json found. Please ensure it's in the proper directory."
exit 1
fi

FIREBASE_PLIST_JSON_DESTINATION=${BUILT_PRODUCTS_DIR}/${PRODUCT_NAME}.app
# Get a reference to the destination location for the GoogleService-Info.plist
# This is the default location where Firebase init code expects to find GoogleServices-Info.plist file
echo "Will copy ${GOOGLESERVICE_INFO_PLIST} to final destination: ${FIREBASE_PLIST_JSON_DESTINATION}"

# Get a reference to the destination location for the firebase_app_id_file.json
# This is the default location where Firebase init code expects to find firebase_app_id_file.json file
echo "Will copy ${FIREBASE_APP_ID_JSON} to final destination: ${FIREBASE_PLIST_JSON_DESTINATION}"

# Copy over the prod GoogleService-Info.plist for Release builds
cp "${GOOGLESERVICE_INFO_FILE}" "${FIREBASE_PLIST_JSON_DESTINATION}"

# Copy over the prod firebase_app_id_file.json for Release builds
cp "${FIREBASE_APP_ID_FILE}" "${FIREBASE_PLIST_JSON_DESTINATION}"
```

## The Following is the OLD setup requirements

### Firebase Required Config Files Location

#### ADD Firebase Config Files iOS dev
```ios/config/dev```
#### ADD Firebase Config Files iOS stg
```ios/config/stg```
#### ADD Firebase Config Files iOS prod
```ios/config/prod```

#### ADD Firebase Config Files Android dev
```android/app/src/dev```
#### ADD Firebase Config Files Android stg
```android/app/src/stg```
#### ADD Firebase Config Files Android prod
```android/app```

### Allow the iOS App to find the correct GoogleService-Info.plist depending on the environment

#### Under the Build Phases in Xcode
```/TARGETS/Build Phases```

#### Under Link Binary With Libraries Create a New Run Script Phase with the name:
```Copy GoogleServices-Info.plist to the correct location```

#### Add the following script 

```
environment="default"

# Regex to extract the scheme name from the Build Configuration
# We have named our Build Configurations as Debug-dev, Debug-prod etc.
# Here, dev and prod are the scheme names. This kind of naming is required by Flutter for flavors to work.
# We are using the $CONFIGURATION variable available in the XCode build environment to extract 
# the environment (or flavor)
# For eg.
# If CONFIGURATION="Debug-prod", then environment will get set to "prod".
if [[ $CONFIGURATION =~ -([^-]*)$ ]]; then
environment=${BASH_REMATCH[1]}
fi

echo $environment

# Name and path of the resource we're copying
GOOGLESERVICE_INFO_PLIST=GoogleService-Info.plist
GOOGLESERVICE_INFO_FILE=${PROJECT_DIR}/config/${environment}/${GOOGLESERVICE_INFO_PLIST}

# Make sure GoogleService-Info.plist exists
echo "Looking for ${GOOGLESERVICE_INFO_PLIST} in ${GOOGLESERVICE_INFO_FILE}"
if [ ! -f $GOOGLESERVICE_INFO_FILE ]
then
echo "No GoogleService-Info.plist found. Please ensure it's in the proper directory."
exit 1
fi

# Get a reference to the destination location for the GoogleService-Info.plist
# This is the default location where Firebase init code expects to find GoogleServices-Info.plist file
PLIST_DESTINATION=${BUILT_PRODUCTS_DIR}/${PRODUCT_NAME}.app
echo "Will copy ${GOOGLESERVICE_INFO_PLIST} to final destination: ${PLIST_DESTINATION}"

# Copy over the prod GoogleService-Info.plist for Release builds
cp "${GOOGLESERVICE_INFO_FILE}" "${PLIST_DESTINATION}"
```
