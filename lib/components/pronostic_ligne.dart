import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:wikibet/components/logo_markers.dart';
import 'package:wikibet/pages/league_page.dart';
import 'package:wikibet/tools/tools.dart';

class PronosticLigne extends StatelessWidget {
  const PronosticLigne({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: AppConstante.DISTANCE / 2),
      child: GestureDetector(
        onTap: () {},
        child: Card(
          child: Container(
            padding: EdgeInsets.all(AppConstante.DISTANCE / 2),
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
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "On ne vit qu'une seule fois",
                    style: AppTextStyle.titleSmall,
                  ),
                  Text(
                    "4 pronos",
                    style: AppTextStyle.body,
                  ),
                ],
              )),
              Icon(
                Icons.check,
              )
            ]),
          ),
        ),
      ),
    );
  }
}
