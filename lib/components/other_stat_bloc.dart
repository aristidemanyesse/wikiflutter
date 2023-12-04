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

  MatchController controller = Get.find();

  OtherStatBloc({
    super.key,
    required this.title,
    required this.home_f,
    required this.away_f,
    required this.home_a,
    required this.away_a,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.white.withOpacity(0.5),
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: AppConstante.PADDING / 2),
          child: Row(
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
                width: AppConstante.PADDING / 2,
              ),
              Expanded(
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: AppConstante.grenn2,
                                  size: AppConstante.PADDING / 4,
                                ),
                                SizedBox(
                                  width: AppConstante.PADDING / 5,
                                ),
                                Text(home_f.toStringAsFixed(1),
                                    style: AppTextStyle.bodysmall),
                              ],
                            ),
                            const Spacer(),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(home_a.toStringAsFixed(1),
                                    style: AppTextStyle.bodysmall),
                                SizedBox(
                                  width: AppConstante.PADDING / 5,
                                ),
                                Icon(
                                  Icons.circle,
                                  color: AppConstante.orange,
                                  size: AppConstante.PADDING / 4,
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: AppConstante.PADDING / 3,
                        ),
                        Transform.rotate(
                          angle: 3.14159265359,
                          child: LinearProgressIndicator(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.red,
                            value: home_f / (home_f + home_a),
                            minHeight: 3,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: AppConstante.PADDING / 2,
              ),
              Center(
                child: Container(
                  padding: EdgeInsets.all(AppConstante.PADDING / 2),
                  child: Column(
                    children: [
                      GestureDetector(
                          onTap: () {
                            Get.dialog(const LineChartPopup());
                          },
                          child: Icon(
                            Icons.bar_chart,
                            size: AppConstante.PADDING,
                          )),
                      Text(
                        title,
                        style: AppTextStyle.bodygras,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: AppConstante.PADDING / 2,
              ),
              Expanded(
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: AppConstante.grenn2,
                                  size: AppConstante.PADDING / 4,
                                ),
                                SizedBox(
                                  width: AppConstante.PADDING / 5,
                                ),
                                Text(away_f.toStringAsFixed(1),
                                    style: AppTextStyle.bodysmall),
                              ],
                            ),
                            const Spacer(),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(away_a.toStringAsFixed(1),
                                    style: AppTextStyle.bodysmall),
                                SizedBox(
                                  width: AppConstante.PADDING / 5,
                                ),
                                Icon(
                                  Icons.circle,
                                  color: AppConstante.orange,
                                  size: AppConstante.PADDING / 4,
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: AppConstante.PADDING / 3,
                        ),
                        LinearProgressIndicator(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.red,
                          value: away_f / (away_f + away_a),
                          minHeight: 3,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: AppConstante.PADDING / 2,
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
          )),
    );
  }
}
