{ pkgs, ... }:

let
  androidComposition = pkgs.androidenv.composeAndroidPackages {
    
    platformVersions = [ "36" ];
    buildToolsVersions = [ "36.0.0" ];
    cmdLineToolsVersion = "22.0";

    includeSources = false;
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
    pkgs.jdk21
  ];

  home.sessionVariables = {
    JAVA_HOME = "${pkgs.jdk21}";
    ANDROID_HOME = "${androidSdk}/libexec/android-sdk";
    ANDROID_SDK_ROOT = "${androidSdk}/libexec/android-sdk";
  };

  home.sessionPath = [
    "${pkgs.jdk21}/bin"
    "${androidSdk}/libexec/android-sdk/platform-tools"
    "${androidSdk}/libexec/android-sdk/emulator"
    "${androidSdk}/libexec/android-sdk/cmdline-tools/latest/bin"
  ];
}