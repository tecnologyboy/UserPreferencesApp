import 'package:flutter/material.dart';
import 'package:user_preferences_app/widgets/widgets.dart';

import '../share_preferences/preferences.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'Home';

  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home Screen'),
        ),
        drawer: const SideMenu(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('isDarkMode: ${Preferences.isDarkMode}'),
            const Divider(),
            Text('Gender: ${Preferences.gender}'),
            const Divider(),
            Text('User Name: ${Preferences.name}'),
          ],
        ));
  }
}
