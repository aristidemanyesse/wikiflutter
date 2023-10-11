import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:wikibet/pages/spashscreen_page.dart';
import 'package:wikibet/tools/tools.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() {
  initializeDateFormatting().then((_) => runApp(const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WIKIBET',
      theme: ThemeData(
          primarySwatch: Colors.indigo,
          scaffoldBackgroundColor: AppConstante.background2),
      darkTheme: ThemeData.dark(useMaterial3: true).copyWith(
          primaryColor: AppConstante.grenn2,
          scaffoldBackgroundColor: AppConstante.background),
      home: const SplashScreenPage(),
    );
  }
}
