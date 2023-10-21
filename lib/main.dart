import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:wikibet/controllers/AppController.dart';
import 'package:wikibet/controllers/CalendarController.dart';
import 'package:wikibet/controllers/ConnexionController.dart';
import 'package:wikibet/controllers/MatchController.dart';
import 'package:wikibet/pages/spashscreen_page.dart';
import 'package:wikibet/pages/test.dart';
import 'package:wikibet/tools/tools.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // NotificationService().initNotification();
  await GetStorage.init();

  Get.put(CalendarController());
  Get.put(ConnexionController());
  Get.put(AppController());
  Get.put(MatchController());

  initializeDateFormatting().then((_) => runApp(MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // ConnexionController controller = Get.find();
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
      // home: MainPage(),
    );
  }
}
