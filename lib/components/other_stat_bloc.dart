import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wikibet/components/line_chart_popup.dart';
import 'package:wikibet/controllers/MatchController.dart';
import 'package:wikibet/tools/tools.dart';

class OtherStatBloc extends StatelessWidget {
  final String title;
  final double home_f;
  final double home_a;
  final double away_f;
  final double away_a;
  final int max;

  MatchController controller = Get.find();

  OtherStatBloc({
    super.key,
    required this.title,
    required this.home_f,
    required this.away_f,
    required this.home_a,
    required this.away_a,
    required this.max,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(vertical: AppConstante.PADDING),
        padding: EdgeInsets.symmetric(horizontal: AppConstante.PADDING / 2),
        child: Column(
          children: [
            Row(
              children: [
                Icon(
                  Icons.supervisor_account,
                  size: AppConstante.PADDING,
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      "Statistiques des $title",
                      style: AppTextStyle.titleMedium,
                    ),
                  ),
                ),
                Icon(
                  Icons.supervisor_account,
                  size: AppConstante.PADDING,
                ),
              ],
            ),
            const Divider(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(AppConstante.PADDING / 4),
                  child: Text(
                    (home_a + home_f).toStringAsFixed(1),
                    style: AppTextStyle.titleSmall,
                  ),
                ),
                SizedBox(
                  width: AppConstante.PADDING / 4,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.circle,
                                color: AppConstante.grenn2,
                                size: AppConstante.PADDING / 3,
                              ),
                              SizedBox(
                                width: AppConstante.PADDING / 4,
                              ),
                              Text(home_f.toStringAsFixed(1),
                                  style: AppTextStyle.bodysmall),
                            ],
                          ),
                          Transform.rotate(
                            angle: 3.14159265359,
                            child: LinearProgressIndicator(
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.red,
                              value: home_f / max,
                              minHeight: 3,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: AppConstante.PADDING / 3,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.circle,
                                color: AppConstante.orange,
                                size: AppConstante.PADDING / 3,
                              ),
                              SizedBox(
                                width: AppConstante.PADDING / 4,
                              ),
                              Text(home_a.toStringAsFixed(1),
                                  style: AppTextStyle.bodysmall),
                            ],
                          ),
                          Transform.rotate(
                            angle: 3.14159265359,
                            child: LinearProgressIndicator(
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.red,
                              value: home_a / max,
                              minHeight: 3,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Container(
                    padding: EdgeInsets.all(AppConstante.PADDING / 2),
                    child: GestureDetector(
                        onTap: () {
                          Get.dialog(const LineChartPopup());
                        },
                        child: Icon(
                          Icons.bar_chart,
                          size: AppConstante.PADDING,
                        )),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(away_f.toStringAsFixed(1),
                                  style: AppTextStyle.bodysmall),
                              SizedBox(
                                width: AppConstante.PADDING / 4,
                              ),
                              Icon(
                                Icons.circle,
                                color: AppConstante.grenn2,
                                size: AppConstante.PADDING / 3,
                              ),
                            ],
                          ),
                          LinearProgressIndicator(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.red,
                            value: away_f / max,
                            minHeight: 3,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: AppConstante.PADDING / 3,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(away_a.toStringAsFixed(1),
                                  style: AppTextStyle.bodysmall),
                              SizedBox(
                                width: AppConstante.PADDING / 4,
                              ),
                              Icon(
                                Icons.circle,
                                color: AppConstante.orange,
                                size: AppConstante.PADDING / 3,
                              ),
                            ],
                          ),
                          LinearProgressIndicator(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.red,
                            value: away_a / max,
                            minHeight: 3,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: AppConstante.PADDING / 4,
                ),
                Center(
                  child: Container(
                    padding: EdgeInsets.all(AppConstante.PADDING / 4),
                    child: Text(
                      (away_a + away_f).toStringAsFixed(1),
                      style: AppTextStyle.titleSmall,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
