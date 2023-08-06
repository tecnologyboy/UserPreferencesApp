import 'package:flutter/material.dart';
import 'package:user_preferences_app/widgets/widgets.dart';

class SettingsScreen extends StatefulWidget {
  static const String routeName = 'Settings';

  const SettingsScreen({
    super.key,
  });

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool isDarkMode = true;
  int gender = 1;
  String name = 'Stephani';

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
              const Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Settings',
                  style: TextStyle(fontSize: 45, fontWeight: FontWeight.w300),
                  textAlign: TextAlign.start,
                ),
              ),
              const Divider(),
              SwitchListTile.adaptive(
                title: const Text('Darkmode'),
                value: isDarkMode,
                onChanged: (value) {
                  isDarkMode = value;
                  setState(() {});
                },
              ),
              const Divider(),
              const Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Sex',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 28),
                  )),
              RadioListTile<int>(
                title: const Text('Male'),
                value: 1,
                groupValue: gender,
                onChanged: (value) {
                  gender = value ?? 1;
                  setState(() {});
                },
              ),
              RadioListTile<int>(
                title: const Text('Female'),
                value: 2,
                groupValue: gender,
                onChanged: (value) {
                  gender = value ?? 2;
                  setState(() {});
                },
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                    initialValue: 'Leonard',
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                    decoration: const InputDecoration(
                        labelText: 'Name', helperText: 'Insert your name')),
              )
            ],
          ),
        ),
      ),
    );
  }
}
