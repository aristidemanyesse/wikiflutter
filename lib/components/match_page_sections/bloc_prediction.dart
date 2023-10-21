import 'package:flutter/material.dart';
import 'package:wikibet/components/logo_markers.dart';
import 'package:wikibet/components/match_page_sections/fact_ligne.dart';
import 'package:wikibet/tools/tools.dart';

class BlocPrediction extends StatelessWidget {
  const BlocPrediction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        margin: EdgeInsets.only(bottom: AppConstante.PADDING),
        child: Container(
          padding: EdgeInsets.all(AppConstante.PADDING / 2),
          child: Column(
            children: [
              const Row(
                children: [
                  Expanded(
                    child: Center(
                      child: Text(
                        "Prediction du resultat",
                        style: AppTextStyle.titleMedium,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: AppConstante.PADDING / 2,
              ),
              Row(
                children: [
                  Container(
                    child: const MyLogo(
                      path: "assets/images/logo.png",
                      height: 40,
                      width: 40,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: AppConstante.PADDING / 2),
                      child: Column(
                        children: [
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "1",
                                style: AppTextStyle.titleSmall,
                              ),
                              Text(
                                "N",
                                style: AppTextStyle.titleSmall,
                              ),
                              Text(
                                "2",
                                style: AppTextStyle.titleSmall,
                              ),
                            ],
                          ),
                          LinearProgressIndicator(
                            borderRadius: BorderRadius.circular(40),
                            minHeight: AppConstante.PADDING / 2,
                            value: 0.7,
                          ),
                          SizedBox(
                            height: AppConstante.PADDING / 4,
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Expanded(
                                flex: 7,
                                child: Center(
                                  child: Text(
                                    "70%",
                                    style: AppTextStyle.body,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Center(
                                  child: Text(
                                    "30%",
                                    style: AppTextStyle.body,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: const MyLogo(
                      path: "assets/images/logo.png",
                      height: 40,
                      width: 40,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: AppConstante.PADDING / 2,
              ),
              const Column(
                children: [
                  FactLigne(),
                  Divider(),
                  FactLigne(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
