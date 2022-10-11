decodeProvision() { security cms -D -i  $1 }
runEmulator() { ~/Library/Android/sdk/tools/emulator -avd Pixel_2_API_29 -no-snapshot }