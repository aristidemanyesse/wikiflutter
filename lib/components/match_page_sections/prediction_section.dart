import 'package:flutter/material.dart';
import 'package:wikibet/components/logo_markers.dart';
import 'package:wikibet/tools/tools.dart';

class PredictionSection extends StatelessWidget {
  const PredictionSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppConstante.DISTANCE / 2),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                child: const Column(children: [
                  MyLogo(
                    path: "assets/images/logo.png",
                    height: 40,
                    width: 40,
                  ),
                  Text("nklk"),
                ]),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: AppConstante.DISTANCE / 2),
                  child: Column(
                    children: [
                      LinearProgressIndicator(
                        borderRadius: BorderRadius.circular(40),
                        minHeight: AppConstante.DISTANCE / 2,
                        value: 0.7,
                      ),
                      SizedBox(
                        height: AppConstante.DISTANCE / 4,
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
                child: const Column(children: [
                  MyLogo(
                    path: "assets/images/logo.png",
                    height: 40,
                    width: 40,
                  ),
                  Text("nklk"),
                ]),
              )
            ],
          ),
          const Text("nklk"),
        ],
      ),
    );
  }
}
