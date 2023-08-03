import 'package:flutter/material.dart';
import 'package:user_preferences_app/screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'User Preferences',
        initialRoute: HomeScreen.routeName,
        routes: {
          HomeScreen.routeName: (_) => const HomeScreen(),
          SettingsScreen.routeName: (_) => const SettingsScreen()
        });
  }
}