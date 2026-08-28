import 'package:flutter/material.dart';
import 'package:tafsir/settings/ui/settings_header.dart';
import 'package:tafsir/settings/ui/settings_widget.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage._();

  static Future<void> open(BuildContext context) async => Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => const SettingsPage._(),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          SettingsHeader(),
          SettingsWidget(),
        ],
      ),
    );
  }
}
