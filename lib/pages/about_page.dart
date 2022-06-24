import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:pine64_updater/main.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.about_page_title),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "PINE64 Updater ${packageInfo.version}",
              style: const TextStyle(fontSize: 28.0),
            ),
            Text(AppLocalizations.of(context)!.about_page_copyright_information),
            const SizedBox(height: 16.0),
            Text(AppLocalizations.of(context)!.about_page_thanks),
            const SizedBox(height: 16.0),
            Text(AppLocalizations.of(context)!.about_page_oss)
          ],
        ),
      ),
    );
  }
}
