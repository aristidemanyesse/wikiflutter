import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:wikibet/pages/leagues_page.dart';
import 'package:wikibet/pages/matchs_page.dart';
import 'package:wikibet/pages/pronostics_day_page.dart';
import 'package:wikibet/pages/settings_page.dart';
import 'package:wikibet/tools/tools.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class OssatureApp extends StatefulWidget {
  const OssatureApp({super.key});

  @override
  State<OssatureApp> createState() => _OssatureAppState();
}

class _OssatureAppState extends State<OssatureApp>
    with TickerProviderStateMixin {
  int _selectedIndex = 0;
  late TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "home",
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: TabBarView(
            physics: const NeverScrollableScrollPhysics(),
            controller: _tabController,
            children: [
              const MatchsPage(),
              LeaguesPage(),
              const PronosticsDayPage(),
              const SettingsPage()
            ],
          ),
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(
                      0, 3), // changement de la position de l'ombre
                ),
              ],
            ),
            padding: EdgeInsets.only(
                top: AppConstante.PADDING / 3,
                right: AppConstante.PADDING,
                left: AppConstante.PADDING),
            child: SafeArea(
              child: Container(
                padding: EdgeInsets.only(bottom: AppConstante.PADDING / 4),
                child: GNav(
                  tabBackgroundColor: Theme.of(context).scaffoldBackgroundColor,
                  haptic: true,
                  gap: AppConstante.PADDING /
                      2, // the tab button gap between icon and text
                  tabBorderRadius: 40,
                  tabActiveBorder: Border.all(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      width: 2),
                  padding: EdgeInsets.symmetric(
                      horizontal: 10, vertical: AppConstante.PADDING / 3),
                  tabBackgroundGradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        AppConstante.grenn1,
                        AppConstante.primaryBlue,
                      ]),
                  activeColor: Colors.white,
                  tabs: const [
                    GButton(
                      icon: LineIcons.users,
                      text: 'Matchs',
                    ),
                    GButton(
                      icon: LineIcons.fontAwesomeFlag,
                      text: 'Leagues',
                    ),
                    GButton(
                      icon: LineIcons.alternateTicket,
                      text: 'Pronos',
                    ),
                    GButton(
                      icon: LineIcons.torah,
                      text: 'Plus',
                    )
                  ],
                  selectedIndex: _selectedIndex,
                  onTabChange: (index) {
                    setState(() {
                      _tabController!.animateTo(index);
                      _selectedIndex = index;
                    });
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
