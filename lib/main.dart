import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wikibet/pages/ossature_app.dart';
import 'package:wikibet/tools/tools.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Adaptive Theme Demo',
      theme: ThemeData(primarySwatch: Colors.indigo),
      darkTheme: ThemeData.dark(useMaterial3: true).copyWith(
          primaryColor: AppConstante.grenn2,
          scaffoldBackgroundColor: AppConstante.background),
      home: const OssatureApp(),
    );
  }
}




// AdaptiveTheme(
//       light: ThemeData(
//         useMaterial3: true,
//         brightness: Brightness.light,
//         primaryColor: AppConstante.primaryBlue,
//         textTheme: GoogleFonts.latoTextTheme(),
//       ),
//       dark: ThemeData(
//           useMaterial3: true,
//           brightness: Brightness.dark,
//           primaryColor: AppConstante.background2,
//           indicatorColor: Colors.white,
//           textTheme: GoogleFonts.latoTextTheme()),
//       initial: AdaptiveThemeMode.light,
//       builder: (theme, darkTheme) => ,
//     );