import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:user_preferences_app/providers/theme_provider.dart';
import 'package:user_preferences_app/screens/screens.dart';
import 'package:user_preferences_app/share_preferences/preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /*
  Como las preferencias de usuario necesita un Future, es decir ejecutarse
  asincronamente, se convirtio la funcion main en asincrona en vista de que
  el rum app debe esperar un Widget y los widget son sincronos.
   */
  await Preferences.init();

/*
 El metodo rumApp se ejecuto mediante multiprovider, para si poder registrar 
 los provider necesaros, en este caso un solo 
 */
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
          create: (_) => ThemeProvider(isDarkMode: Preferences.isDarkMode))
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'User Preferences',
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (_) => const HomeScreen(),
        SettingsScreen.routeName: (_) => const SettingsScreen()
      },
      theme: Provider.of<ThemeProvider>(context).currentTheme,
    );
  }
}
