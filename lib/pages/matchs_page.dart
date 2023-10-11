import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:wikibet/components/calendar.dart';
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
      appBar: AppBar(
        elevation: 2.0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            AppConstante.grenn1.withOpacity(0.5),
            AppConstante.primaryBlue.withOpacity(0.5),
          ])),
        ),
        leading: Container(
          margin: EdgeInsets.only(left: AppConstante.DISTANCE / 2),
          child: const MyLogo(
            path: "assets/images/logo.png",
            height: 10,
            width: 10,
          ),
        ),
        actions: [
          const CalendarButton(),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
              )),
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
        padding: EdgeInsets.symmetric(
            horizontal: AppConstante.DISTANCE / 4,
            vertical: AppConstante.DISTANCE / 3),
        child: SingleChildScrollView(
          child: Column(
            children: List.generate(10, (index) => const MatchCard()),
          ),
        ),
      ),
    );
  }
}

class CalendarButton extends StatelessWidget {
  const CalendarButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Get.dialog(const Calendar());
      },
      icon: Stack(
        alignment: Alignment.center,
        children: [
          Opacity(
            opacity: 0.7,
            child: Icon(
              Icons.calendar_today_outlined,
              size: AppConstante.DISTANCE * 1.5,
            ),
          ),
          const Positioned(
            top: 12,
            left: 8.5,
            child: Text(
              "23",
              style: AppTextStyle.bodygras,
            ),
          )
        ],
      ),
    );
  }
}
