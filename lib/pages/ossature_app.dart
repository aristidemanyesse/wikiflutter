import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:wikibet/pages/leagues_page.dart';
import 'package:wikibet/pages/matchs_page.dart';
import 'package:wikibet/pages/pronostics_day_page.dart';
import 'package:wikibet/pages/settings_page.dart';
import 'package:wikibet/pages/test.dart';
import 'package:wikibet/tools/tools.dart';

class OssatureApp extends StatefulWidget {
  const OssatureApp({super.key});

  @override
  State<OssatureApp> createState() => _OssatureAppState();
}

class _OssatureAppState extends State<OssatureApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "home",
      child: DefaultTabController(
        length: 5,
        child: Scaffold(
            body: const TabBarView(
              children: [
                MatchsPage(),
                LeaguesPage(),
                PronosticsDayPage(),
                SettingsPage(),
                TextPage()
              ],
            ),
            bottomNavigationBar: ConvexAppBar(
              backgroundColor: AppConstante.primaryBlue,
              activeColor: AppConstante.background2,
              top: -AppConstante.DISTANCE,
              items: const [
                TabItem(icon: Icons.home, title: 'Home'),
                TabItem(icon: Icons.map, title: 'Discovery'),
                TabItem(icon: Icons.add, title: 'Add'),
                TabItem(icon: Icons.message, title: 'Message'),
                TabItem(icon: Icons.message, title: 'Message'),
              ],
              onTap: (int i) => print('click index=$i'),
            )),
      ),
    );
  }
}
