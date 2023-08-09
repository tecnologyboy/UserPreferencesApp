import 'package:flutter/material.dart';

/*
Este es un provider, construido exclusivamente para mantener el estado de 
la configuracion de colore general del disositivo es decir el tema (theme)

Esta clase debe ser inicializada en el main con multiprovider 
y luego colocada en la clase que se requiere utilizar segun corresponda.
*/

class ThemeProvider extends ChangeNotifier {
  ThemeData currentTheme;

  ThemeProvider({required bool isDarkMode})
      : currentTheme = isDarkMode ? ThemeData.dark() : ThemeData.light();

  setLightMode() {
    currentTheme = ThemeData.light();
    notifyListeners();
  }

  setDarkMode() {
    currentTheme = ThemeData.dark();
    notifyListeners();
  }
}
