import 'package:flutter/material.dart';
import 'package:user_preferences_app/widgets/widgets.dart';

class PeopleScreen extends StatelessWidget {
  static const String routeName = 'People';
  const PeopleScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('People'),
        ),
        drawer: const SideMenu(),
        body: Column(
          children: const [
            Center(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  'Person Information',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ));
  }
}
