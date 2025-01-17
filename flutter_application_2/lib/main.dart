import 'package:flutter/material.dart';
import 'constants.dart';
import 'home.dart';

void main() {
  // 1
  runApp(Yummy());
}

class Yummy extends StatefulWidget {
  Yummy({super.key});

  @override
  State<Yummy> createState() => _YummyState();
}

class _YummyState extends State<Yummy> {
  void changeThemeMode(bool useLightMode) {
    setState(() {
      themeMode = useLightMode ? ThemeMode.light : ThemeMode.dark;
    });
  }

  void changeColor(int value) {
    setState(() {
      colorSelected = ColorSelection.values[value];
    });
  }

  ThemeMode themeMode = ThemeMode.light;
  ColorSelection colorSelected = ColorSelection.pink;

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Yummy';
    //3

    return MaterialApp(
        title: appTitle,
        debugShowCheckedModeBanner: false, // Uncomment to remove Debug banner
        themeMode: themeMode,
        theme: ThemeData(
          colorSchemeSeed: colorSelected.color,
          useMaterial3: true,
          brightness: Brightness.light,
        ),
        darkTheme: ThemeData(
          colorSchemeSeed: colorSelected.color,
          useMaterial3: true,
          brightness: Brightness.dark,
        ),

        // TODO: Apply Home widget

        // 4
        home: Home(
            changeTheme: changeThemeMode,
            changeColor: changeColor,
            colorSelected: colorSelected));
  }
}
