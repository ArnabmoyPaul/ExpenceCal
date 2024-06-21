import 'package:flutter/material.dart';
import 'package:project_two/widgets/expenses.dart';
//  import 'package:flutter/services.dart';

var KColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 96, 59, 181),
);

var KDarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 5, 99, 125),
);

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([
  // DeviceOrientation.portraitUp,
  // ]).then((fn) {
  runApp(
    MaterialApp(
      // ignore: deprecated_member_use
      darkTheme: ThemeData.dark().copyWith(
          // ignore: deprecated_member_use
          useMaterial3: true,
          colorScheme: KDarkColorScheme,
          cardTheme: const CardTheme().copyWith(
            color: KDarkColorScheme.secondaryContainer,
            margin: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: KDarkColorScheme.primaryContainer,
              foregroundColor: KDarkColorScheme.onPrimaryContainer,
            ),
          )),
      theme: ThemeData().copyWith(
        // ignore: deprecated_member_use
        useMaterial3: true,
        colorScheme: KColorScheme,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: KColorScheme.onPrimaryContainer,
          foregroundColor: KColorScheme.primaryContainer,
        ),
        cardTheme: const CardTheme().copyWith(
          color: KColorScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 9,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: KColorScheme.primaryContainer,
          ),
        ),
        textTheme: ThemeData().textTheme.copyWith(
              titleLarge: TextStyle(
                fontWeight: FontWeight.normal,
                color: KColorScheme.onSecondaryContainer,
                fontSize: 14,
              ),
            ),
      ),
      //theme: ThemeData(useMaterial3: true),
      //themeMode: ThemeMode.system,//default
      home: const Expenses(), //todo: add main widget here....
    ),
  );
  // });
}
