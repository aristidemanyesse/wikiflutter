import 'package:flutter/material.dart';
import 'package:wikibet/components/logo_markers.dart';
import 'package:wikibet/tools/tools.dart';

class HistoriquesMatchs extends StatelessWidget {
  const HistoriquesMatchs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            const MyLogo(
              path: "assets/images/logo.png",
              height: 40,
              width: 40,
            ),
            SizedBox(
              width: AppConstante.DISTANCE / 2,
            ),
            const Expanded(
                child: Text("Union Sportive de Saint Galloise",
                    style: AppTextStyle.titleMedium)),
          ],
        ),
        const Divider(
          height: 1,
        ),
        Container(
          child: const Column(
            children: [
              LigneMatch(),
              LigneMatch(),
              LigneMatch(),
              LigneMatch(),
              LigneMatch(),
              LigneMatch(),
              LigneMatch(),
            ],
          ),
        ),
      ],
    );
  }
}

class LigneMatch extends StatelessWidget {
  const LigneMatch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(AppConstante.DISTANCE),
      child: Card(
        child: SizedBox(
          width: double.infinity,
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.all(AppConstante.DISTANCE / 4),
                decoration: BoxDecoration(color: AppConstante.background2),
                child: const Center(
                  child: Column(children: [
                    Text("12/12", style: AppTextStyle.bodysmall),
                    Text("17:20", style: AppTextStyle.bodysmall)
                  ]),
                ),
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Expanded(
                        child: Text(
                      "Manchester United",
                      style: AppTextStyle.body,
                      textAlign: TextAlign.right,
                      overflow: TextOverflow.ellipsis,
                    )),
                    const MyLogo(
                      path: "assets/images/logo.png",
                      height: 20,
                      width: 20,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      child: const Column(
                        children: [
                          Text(
                            "0 : 0",
                            style: AppTextStyle.bodysmall,
                          ),
                          Text(
                            "0 : 0",
                            style: AppTextStyle.bodygras,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const MyLogo(
                      path: "assets/images/logo.png",
                      height: 20,
                      width: 20,
                    ),
                    const Expanded(
                        child: Text(
                      "Union Sportive de Saint Galloise",
                      style: AppTextStyle.body,
                      textAlign: TextAlign.left,
                      overflow: TextOverflow.ellipsis,
                    )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
