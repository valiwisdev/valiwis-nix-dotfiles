{ config, pkgs, ... }:

let
  androidComposition = pkgs.androidenv.composeAndroidPackages {
    platformVersions = [ "34" "35" ];
    buildToolsVersions = [ "34.0.0" "35.0.0"];
    includeSources = false;
    includeCmake = true;
    cmakeVersions = [ "3.22.1" ];
    includeNDK = true;
    ndkVersions = [ "28.2.13676358" ];
    includeEmulator = true;
    includeSystemImages = true;
    systemImageTypes = [ "google_apis" ];
    abiVersions = [ "arm64-v8a" ];
  };

  androidSdk = androidComposition.androidsdk;
  sdkRoot = "${androidSdk}/libexec/android-sdk";
in
{
  home.packages = with pkgs; [
    androidSdk
    jdk21
    ninja
    pkg-config
    gnumake
    git
    python3
    curl
    wget
    unzip
    zip
    file
    which
  ];

  home.sessionVariables = {
    JAVA_HOME = "${pkgs.jdk21}";

    ANDROID_HOME = sdkRoot;
    ANDROID_SDK_ROOT = sdkRoot;

    ANDROID_NDK_ROOT =
      "${sdkRoot}/ndk/28.2.13676358";

    ANDROID_NDK_HOME =
      "${sdkRoot}/ndk/28.2.13676358";

    ANDROID_AVD_HOME =
      "${config.xdg.configHome}/.android/avd";
  };

  home.sessionPath = [
    "${pkgs.jdk21}/bin"

    "${sdkRoot}/platform-tools"
    "${sdkRoot}/emulator"
    "${sdkRoot}/cmdline-tools/latest/bin"
  ];
}