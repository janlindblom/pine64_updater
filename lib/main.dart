import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:pine64_updater/libs/libusb.dart';
import 'package:pine64_updater/pages/about_page.dart';
import 'package:pine64_updater/pages/flash_pinecil_page.dart';

import 'libs/libdfu.dart';
import 'pages/pick_device_page.dart';

void main() async {
  currentWorkingDirectory = Directory.current.path;
  runApp(const Pine64UpdaterApp());
  packageInfo = await PackageInfo.fromPlatform();
}

class Pine64UpdaterApp extends StatelessWidget {
  const Pine64UpdaterApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      title: AppLocalizations.of(context)!.app_title,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const PickDevicePage(),
        '/flash/pinecil': (context) => const FlashPinecilPage(),
        '/about': (context) => const AboutPage(),
      },
    );
  }
}

late String currentWorkingDirectory;
late PackageInfo packageInfo;
