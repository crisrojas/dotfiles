showDotfiles() {
	defaults write com.apple.Finder AppleShowAllFiles true;
	killall Finder	
}

hideDotfiles() {
	defaults write com.apple.Finder AppleShowAllFiles false;
	killall Finder	
}

decodeProvision() { security cms -D -i  $1 }
runEmulator() { ~/Library/Android/sdk/tools/emulator -avd Pixel_2_API_29 -no-snapshot }