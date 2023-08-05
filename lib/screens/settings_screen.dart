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
      drawer: const SideMenu(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                'Settings',
                style: TextStyle(fontSize: 45, fontWeight: FontWeight.w300),
                textAlign: TextAlign.start,
              ),
              const Divider(),
              SwitchListTile.adaptive(
                title: const Text('Darkmode'),
                value: true,
                onChanged: (value) {},
              ),
              const Divider(),
              RadioListTile<int>(
                title: const Text('Sex'),
                value: 1,
                groupValue: 1,
                onChanged: (value) {},
              ),
              RadioListTile<int>(
                title: const Text('Femenino'),
                value: 2,
                groupValue: 1,
                onChanged: (value) {},
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                    initialValue: 'Leonard',
                    decoration: const InputDecoration(
                        labelText: 'Nombre',
                        helperText: 'Introduzca su nombre')),
              )
            ],
          ),
        ),
      ),
    );
  }
}
