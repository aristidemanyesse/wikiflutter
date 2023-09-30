import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wikibet/pages/ossatureApp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        primarySwatch: Colors.red,
        primaryColor: Colors.red,
        secondaryHeaderColor: Colors.amber,
        textTheme: GoogleFonts.latoTextTheme(),
      ),
      dark: ThemeData(
          useMaterial3: true,
          brightness: Brightness.dark,
          primarySwatch: Colors.green,
          primaryColor: Colors.green,
          indicatorColor: Colors.white,
          textTheme: GoogleFonts.latoTextTheme()),
      initial: AdaptiveThemeMode.light,
      builder: (theme, darkTheme) => GetMaterialApp(
        title: 'Adaptive Theme Demo',
        theme: theme,
        darkTheme: darkTheme,
        home: const OssatureApp(),
      ),
    );
  }
}
