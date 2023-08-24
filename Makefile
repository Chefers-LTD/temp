### Clean the environment
.PHONY: clean
clean: 
	@echo "🧼 🧼 🧼 Cleaning the project..."
	@cd main && rm -rf pubspec.lock && flutter clean && cd ios && rm -rf Podfile.lock
	@for dir in ./modules/*; do \
		if [ -d $$dir ]; then \
			echo Cleaning $$dir; \
			pushd $$dir; \
			rm -rf pubspec.lock; \
			flutter clean || true; \
			popd; \
		fi \
	done
	
### Format the code
.PHONY: format
format: 
	@echo "🧹 🧹 🧹 Formatting the code"
	@cd main && dart format .
	@for dir in ./modules/*; do \
		if [ -d $$dir ]; then \
			echo Formatting $$dir; \
			pushd $$dir; \
			dart format . || true; \
			popd; \
		fi \
	done

### Lint the code
.PHONY: lint
lint: 
	@echo "🧐 🧐 🧐 Verifying code..."
	@cd main && flutter analyze . || (echo "Error in project"; exit 1)
	@for dir in ./modules/*; do \
		if [ -d $$dir ]; then \
			echo Linting $$dir; \
			pushd $$dir; \
			flutter analyze . || true; \
			popd; \
		fi \
	done

### Upgrades dependencies
.PHONY: upgrade
upgrade: clean  
	@echo "🛩️ 🛩️ 🛩️ Upgrading dependencies..."
	@cd main && flutter pub upgrade
	@cd main/ios && rm -rf Podfile.lock && pod install --repo-update 
	@cd main/macos && rm -rf Podfile.lock && pod install --repo-update 
	@for dir in ./modules/*; do \
		if [ -d $$dir ]; then \
			echo Upgrading $$dir; \
			pushd $$dir; \
			flutter pub upgrade; \
			popd; \
		fi \
	done

### Get dependencies
.PHONY: pub
pub:
	@echo "🚛 🚛 🚛 Running flutter pub get"
	@cd main && flutter pub get
	@cd main/ios && rm -rf Podfile.lock && pod install --repo-update
	@cd main/macos && rm -rf Podfile.lock && pod install --repo-update 
	@for dir in ./modules/*; do \
		if [ -d $$dir ]; then \
			echo Getting dependencies for $$dir; \
			pushd $$dir; \
			flutter pub get; \
			popd; \
		fi \
	done

### Run Retrofit 
.PHONY: build
build: 	
	@echo "🏗️ 🏗️ 🏗️ Running build"
	@for dir in ./modules/*; do \
		if [ -d $$dir ]; then \
			echo Building $$dir; \
			pushd $$dir; \
			rm -r .dart_tool && dart run build_runner build --delete-conflicting-outputs; \
			popd; \
		fi \
	done

### Generagte Failure Models 
.PHONY: failure_models
failure_models: 	
	@echo "🚨 🚨 🚨 Generating Failue Models"
	@cd modules/core_module && rm -r .dart_tool && dart run build_runner build --delete-conflicting-outputs

### Generate Localization
.PHONY: l10n
l10n:
	@echo "🌐 🌐 🌐 Running flutter gen-l10n"
	@cd modules/core_module && flutter gen-l10n

### Run Pod Install 
.PHONY: pod
pod: 	
	@echo "🍏 🍏 🍏 Running pod install"
	@cd main && cd ios && rm -rf Podfile.lock && pod install --repo-update 
	@cd main && cd macos && rm -rf Podfile.lock && pod install --repo-update 

### Run Route Generation 
.PHONY: route
route: 	
	@echo "🚊 🚊 🚊 Running route generation"
	@cd modules/app_module && rm -rf .dart_tool && dart run build_runner build --delete-conflicting-outputs

### Run Initialization 
.PHONY: init
init: 	
	@echo "🛠 🛠 🛠 Running Initialization"
	@make clean
	@make pub
	@make l10n
	@make build
	@make format
	@make lint
 
### To Run app in `dev` environment

#### Run app in debug mode (Picks up debug signing config)
.PHONY: run_dev_debug
run_dev_debug: 
	@echo "🚀 🚀 🚀 Running dev debug"
	@sh cicd/dev/makefile_launch_scripts/dev_debug.sh

#### Run app in profile mode (Picks up profile signing config)
.PHONY: run_dev_profile
run_dev_profile: 	
	@echo "🚀 🚀 🚀 Running dev profile"
	@sh cicd/dev/makefile_launch_scripts/dev_profile.sh

#### Run app in release mode (Picks up release signing config)
.PHONY: run_dev_release
run_dev_release: 
	@echo "🚀 🚀 🚀 Running dev release"
	@sh cicd/dev/makefile_launch_scripts/dev_release.sh
		
#### Create appBundle for Android platform. Runs in release mode by default.
.PHONY: create_appbundle_dev
create_appbundle_dev: 
	@echo "📦 📦 📦 Creating appbundle dev"
	@sh cicd/dev/makefile_launch_scripts/dev_appbundle.sh

#### Create APK for dev flavor. Runs in release mode by default.
.PHONY: create_apk_dev
create_apk_dev: 	
	@echo "📦 📦 📦 Creating apk dev"
	@sh cicd/dev/makefile_launch_scripts/dev_apk.sh

#### Create IPA for dev flavor. Runs in release mode by default.
.PHONY: create_ipa_dev
create_ipa_dev: 	
	@echo "📦 📦 📦 Creating ipa dev"
	@sh cicd/dev/makefile_launch_scripts/dev_ipa.sh

#### Create WEB for dev flavor. Runs in release mode by default.
.PHONY: create_web_dev
create_web_dev: 	
	@echo "📦 📦 📦 Creating web dev"
	@sh cicd/dev/makefile_launch_scripts/dev_web.sh

### To Run app in `stg` environment

#### Run app in debug mode (Picks up debug signing config)
.PHONY: run_stg_debug
run_stg_debug: 
	@echo "🚀 🚀 🚀 Running stg debug"
	@sh cicd/stg/makefile_launch_scripts/stg_debug.sh

#### Run app in profile mode (Picks up profile signing config)
.PHONY: run_stg_profile
run_stg_profile: 
	@echo "🚀 🚀 🚀 Running stg profile"
	@sh cicd/stg/makefile_launch_scripts/stg_profile.sh

#### Run app in release mode (Picks up release signing config)
.PHONY: run_stg_release
run_stg_release: 
	@echo "🚀 🚀 🚀 Running stg release"
	@sh cicd/stg/makefile_launch_scripts/stg_release.sh

#### Create appBundle for Android platform. Runs in release mode by default.
.PHONY: create_appbundle_stg
create_appbundle_stg:
	@echo "📦 📦 📦 Creating appbundle stg"
	@sh cicd/stg/makefile_launch_scripts/stg_appbundle.sh

#### Create APK for stg flavor. Runs in release mode by default.
.PHONY: create_apk_stg
create_apk_stg: 
	@echo "📦 📦 📦 Creating apk stg"
	@sh cicd/stg/makefile_launch_scripts/stg_apk.sh

#### Create IPA for stg flavor. Runs in release mode by default.
.PHONY: create_ipa_stg
create_ipa_stg: 	
	@echo "📦 📦 📦 Creating ipa stg"
	@sh cicd/stg/makefile_launch_scripts/stg_ipa.sh

#### Create WEB for stg flavor. Runs in release mode by default.
.PHONY: create_web_stg
create_web_stg: 	
	@echo "📦 📦 📦 Creating web stg"
	@sh cicd/stg/makefile_launch_scripts/stg_web.sh

### To Run app in `prod` environment
#### Run app in debug mode (Picks up debug signing config)
.PHONY: run_prod_debug
run_prod_debug: 
	@echo "🚀 🚀 🚀 Running prod debug"
	@sh cicd/prod/makefile_launch_scripts/prod_debug.sh

#### Run app in profile mode (Picks up profile signing config)
.PHONY: run_prod_profile
run_prod_profile: 
	@echo "🚀 🚀 🚀 Running prod profile"
	@sh cicd/prod/makefile_launch_scripts/prod_profile.sh

#### Run app in release mode (Picks up release signing config)
.PHONY: run_prod_release
run_prod_release: 
	@echo "🚀 🚀 🚀 Running prod release"
	@sh cicd/prod/makefile_launch_scripts/prod_release.sh

#### Create appBundle for Android platform. Runs in release mode by default.
.PHONY: create_appbundle_prod
create_appbundle_prod: 
	@echo "📦 📦 📦 Creating appbundle prod"
	@sh cicd/prod/makefile_launch_scripts/prod_appbundle.sh

#### Create APK for prod flavor. Runs in release mode by default.
.PHONY: create_apk_prod
create_apk_prod: 
	@echo "📦 📦 📦 Creating apk prod"
	@sh cicd/prod/makefile_launch_scripts/prod_apk.sh

#### Create IPA for prod flavor. Runs in release mode by default.
.PHONY: create_ipa_prod
create_ipa_prod: 	
	@echo "📦 📦 📦 Creating ipa prod"
	@sh cicd/prod/makefile_launch_scripts/prod_ipa.sh

#### Create WEB for prod flavor. Runs in release mode by default.
.PHONY: create_web_prod
create_web_prod: 	
	@echo "📦 📦 📦 Creating web prod"
	@sh cicd/prod/makefile_launch_scripts/prod_web.sh