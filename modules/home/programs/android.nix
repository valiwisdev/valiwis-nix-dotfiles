{ pkgs, ... }:

let
  androidComposition = pkgs.androidenv.composeAndroidPackages {
    platformVersions = [ "36", "latest" ];

    includeSources = true;
    includeNDK = false;

    includeEmulator = true;
    includeSystemImages = true;

    systemImageTypes = [ "google_apis" ];
    abiVersions = [ "arm64-v8a" ];
  };

  androidSdk = androidComposition.androidsdk;
in
{
  home.packages = [
    androidSdk
  ];

  home.sessionVariables = {
    ANDROID_HOME = "${androidSdk}/libexec/android-sdk";
    ANDROID_SDK_ROOT = "${androidSdk}/libexec/android-sdk";
  };

  home.sessionPath = [
    "${androidSdk}/libexec/android-sdk/platform-tools"
    "${androidSdk}/libexec/android-sdk/emulator"
    "${androidSdk}/libexec/android-sdk/cmdline-tools/latest/bin"
  ];
}