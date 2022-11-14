setup-arm:
	sudo softwareupdate --install-rosetta --agree-to-license
	cd ios; arch -x86_64 pod install

run:
	echo "NOTE: this may fail if you have not opened Simulator.app"
	flutter pub get
	flutter run --flavor dev --dart-define=ENVIRONMENT=dev --target lib/main.dart
