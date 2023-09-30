import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:sliding_switch/sliding_switch.dart';
import 'package:wikibet/pages/leagues_page.dart';
import 'package:wikibet/pages/matchs_page.dart';
import 'package:wikibet/pages/pronostics_day_page.dart';
import 'package:wikibet/pages/settings_page.dart';
import 'package:wikibet/tools/tools.dart';

class OssatureApp extends StatefulWidget {
  const OssatureApp({super.key});

  @override
  State<OssatureApp> createState() => _OssatureAppState();
}

class _OssatureAppState extends State<OssatureApp> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
          body: TabBarView(
            children: [
              const MatchsPage(),
              const LeaguesPage(),
              PronosticsDayPage(),
              SettingsPage(),
            ],
          ),
          bottomNavigationBar: ConvexAppBar(
            backgroundColor: AppConstante.background,
            activeColor: AppConstante.grenn2,
            items: const [
              TabItem(icon: Icons.home, title: 'Home'),
              TabItem(icon: Icons.map, title: 'Discovery'),
              TabItem(icon: Icons.add, title: 'Add'),
              TabItem(icon: Icons.message, title: 'Message'),
            ],
            onTap: (int i) => print('click index=$i'),
          )),
    );
  }
}
