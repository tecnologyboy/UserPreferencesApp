import 'package:flutter/material.dart';
import 'package:user_preferences_app/widgets/widgets.dart';

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
      drawer: SideMenu(),
      body: const Center(
        child: Text('Home'),
      ),
    );
  }
}
