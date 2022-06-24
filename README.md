# PINE64 Updater

Application for updating PINE64 devices, such as Pinecil.

## Supported devices

- [X] Pinecil
- [ ] PinePhone
- [ ] PinePhone Pro

## Supported platforms

- [X] Windows
- [X] MacOS
- [ ] Linux
- [ ] Android
- [ ] Web

## How to download & install

Download the binaries from the [releases page](https://github.com/pine64/pine64_updater/releases).

## Compilation instructions

### Compilation on Windows 10

N.B.: These instructions are work in progress, your mileage may vary.

- **Prerequisites:**
  - Flutter SDK
  - Visual Studio C++ Tools

Installation of prerequisites on Windows 10 is quite easily accomplished with [Scoop](https://scoop.sh/):

- **Install Visual Studio with C++ Tools:**
  - Download the Visual Studio Installer from [visualstudio.com](https://visualstudio.microsoft.com/) and make sure to select the *"Desktop development with C++"* workload.
- Install Flutter:

  ```sh
  scoop install flutter
  ```

- Scoop will download and install Flutter SDK together with all requirements.
- Select **Android SDK 29** when asked, although we won't be building for Android here Flutter will want one and Android SDK 29 is known to work.
- **Make sure everything works:**
  - Run `flutter pub get` to download all packages
  - Configure Flutter to build only Windows:

```sh
$ flutter config --no-enable-macos-desktop --no-enable-linux-desktop --no-enable-web --no-enable-android --no-enable-ios --enable-windows-desktop --no-enable-windows-uwp-desktop
Setting "enable-web" value to "false".
Setting "enable-linux-desktop" value to "false".
Setting "enable-macos-desktop" value to "false".
Setting "enable-windows-desktop" value to "true".
Setting "enable-windows-uwp-desktop" value to "false".
Setting "enable-android" value to "false".
Setting "enable-ios" value to "false".

You may need to restart any open editors for them to read new settings.
```

  - Compile the application:
```sh
```