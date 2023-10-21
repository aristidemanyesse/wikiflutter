import 'package:flutter/material.dart';
import 'package:wikibet/components/logo_markers.dart';
import 'package:wikibet/core/apiservice.dart';
import 'package:wikibet/models/statsApp/resultMatch.dart';
import 'package:wikibet/tools/tools.dart';
import 'package:wikibet/models/fixtureApp/match.dart';

class LigneMatch extends StatelessWidget {
  final Match match;
  const LigneMatch({
    super.key,
    required this.match,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(AppConstante.PADDING / 2),
      child: Card(
        margin: const EdgeInsets.all(3),
        child: Container(
          padding: EdgeInsets.all(AppConstante.PADDING / 3),
          width: double.infinity,
          child: Row(
            children: [
              Container(
                child: Center(
                  child: Column(children: [
                    Text(
                        "${DateTime.parse(match.date + " " + match.hour).day}/${DateTime.parse(match.date + " " + match.hour).month}",
                        style: AppTextStyle.body),
                    Text(
                        "${DateTime.parse(match.date + " " + match.hour).hour}:${DateTime.parse(match.date + " " + match.hour).minute}",
                        style: AppTextStyle.bodysmall)
                  ]),
                ),
              ),
              Container(
                margin:
                    EdgeInsets.symmetric(horizontal: AppConstante.PADDING / 2),
                height: 20,
                width: 1,
                color: Colors.grey,
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                        child: Text(
                      "${match.home!.team!.name}",
                      style: AppTextStyle.body,
                      textAlign: TextAlign.right,
                      overflow: TextOverflow.ellipsis,
                    )),
                    SizedBox(
                      width: AppConstante.PADDING / 4,
                    ),
                    MyLogo(
                      path: "${ApiService.BASE_URL + match.home!.team!.logo}",
                      height: 25,
                      width: 25,
                    ),
                    SizedBox(
                      width: AppConstante.PADDING / 4,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Text(
                            "0 : 0",
                            style: AppTextStyle.bodysmall,
                          ),
                          Text(
                            "0 : 0",
                            style: AppTextStyle.titleSmall,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: AppConstante.PADDING / 4,
                    ),
                    MyLogo(
                      path: "${ApiService.BASE_URL + match.away!.team!.logo}",
                      height: 25,
                      width: 25,
                    ),
                    SizedBox(
                      width: AppConstante.PADDING / 4,
                    ),
                    Expanded(
                        child: Text(
                      "${match.away!.team!.name}",
                      style: AppTextStyle.body,
                      textAlign: TextAlign.left,
                      overflow: TextOverflow.ellipsis,
                    )),
                  ],
                ),
              ),
              SizedBox(
                width: AppConstante.PADDING / 4,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Container(
                  decoration: BoxDecoration(
                    color: AppConstante.grenn1,
                  ),
                  height: AppConstante.PADDING,
                  width: AppConstante.PADDING,
                  child: Center(
                    child: Text(
                      "V",
                      style: AppTextStyle.bodysmall,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
