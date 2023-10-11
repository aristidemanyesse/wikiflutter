import 'package:flutter/material.dart';
import 'package:wikibet/components/logo_markers.dart';
import 'package:wikibet/tools/tools.dart';

class LigneMatch extends StatelessWidget {
  const LigneMatch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(AppConstante.DISTANCE / 2),
      child: Card(
        margin: const EdgeInsets.all(3),
        child: Container(
          padding: EdgeInsets.all(AppConstante.DISTANCE / 3),
          width: double.infinity,
          child: Row(
            children: [
              Container(
                child: const Center(
                  child: Column(children: [
                    Text("12/12", style: AppTextStyle.body),
                    Text("17:20", style: AppTextStyle.bodysmall)
                  ]),
                ),
              ),
              Container(
                margin:
                    EdgeInsets.symmetric(horizontal: AppConstante.DISTANCE / 2),
                height: 20,
                width: 1,
                color: Colors.grey,
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
                    SizedBox(
                      width: AppConstante.DISTANCE / 4,
                    ),
                    const MyLogo(
                      path: "assets/images/logo.png",
                      height: 25,
                      width: 25,
                    ),
                    SizedBox(
                      width: AppConstante.DISTANCE / 4,
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
                            style: AppTextStyle.titleSmall,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: AppConstante.DISTANCE / 4,
                    ),
                    const MyLogo(
                      path: "assets/images/logo.png",
                      height: 25,
                      width: 25,
                    ),
                    SizedBox(
                      width: AppConstante.DISTANCE / 4,
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
              SizedBox(
                width: AppConstante.DISTANCE / 4,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Container(
                  decoration: BoxDecoration(
                    color: AppConstante.grenn1,
                  ),
                  padding: EdgeInsets.all(AppConstante.DISTANCE / 5),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
