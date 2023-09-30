import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:wikibet/components/logo_markers.dart';
import 'package:wikibet/components/match_card.dart';
import 'package:wikibet/tools/tools.dart';

class MatchsPage extends StatefulWidget {
  const MatchsPage({super.key});

  @override
  State<MatchsPage> createState() => _MatchsPageState();
}

class _MatchsPageState extends State<MatchsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstante.background2,
      appBar: AppBar(
        elevation: 2.0,
        leading: const MyLogo(
          path: "assets/images/logo.png",
          height: 10,
          width: 10,
        ),
        actions: [
          IconButton(
              onPressed: () {
                AdaptiveTheme.of(context).toggleThemeMode();
              },
              icon: Stack(
                alignment: Alignment.center,
                children: [
                  Opacity(
                    opacity: 0.2,
                    child: Icon(
                      Icons.calendar_month,
                      size: AppConstante.DISTANCE * 2,
                    ),
                  ),
                  const Text(
                    "23",
                    style: AppTextStyle.titleMedium,
                  )
                ],
              )),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        ],
        title:
            const Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Bonjour",
                style: AppTextStyle.body,
              ),
              Text(
                "Fabien Oligard",
                style: AppTextStyle.titleMedium,
              )
            ],
          )
        ]),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: AppConstante.DISTANCE / 2),
        child: SingleChildScrollView(
          child: Column(
            children: List.generate(10, (index) => const MatchCard()),
          ),
        ),
      ),
    );
  }
}
