import 'package:flutter/material.dart';

import '../constants/page_titles.dart';
import '../widgets/app_scaffold.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
      pageTitle: PageTitles.settings,
      body: Center(
        child: Text('This is the settings page'),
      ),
    );
  }
}