import 'package:flutter/material.dart';
import 'package:user_preferences_app/widgets/widgets.dart';

class SettingsScreen extends StatelessWidget {
  static const String routeName = 'Settings';

  const SettingsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings Screen'),
      ),
      drawer: SideMenu(),
      body: const Center(
        child: Text('Settings'),
      ),
    );
  }
}
