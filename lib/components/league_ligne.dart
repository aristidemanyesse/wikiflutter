import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:wikibet/components/logo_markers.dart';
import 'package:wikibet/pages/league_page.dart';
import 'package:wikibet/tools/tools.dart';

class LeagueLigne extends StatelessWidget {
  const LeagueLigne({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {
          Get.to(const LeaguePage());
        },
        child: Card(
          child: Container(
            padding: EdgeInsets.all(AppConstante.PADDING / 2),
            child: const Row(children: [
              MyLogo(
                path: "assets/images/logo.png",
                height: 30,
                width: 30,
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                  child: Text(
                "Championnat de France",
                style: AppTextStyle.titleMedium,
              )),
              Opacity(
                opacity: 0.15,
                child: MyLogo(
                  path: "assets/images/logo.png",
                  height: 20,
                  width: 20,
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
