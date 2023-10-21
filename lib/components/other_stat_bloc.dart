import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:wikibet/components/line_chart_popup.dart';
import 'package:wikibet/tools/tools.dart';

class OtherStatBloc extends StatelessWidget {
  const OtherStatBloc({
    super.key,
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
                const Expanded(
                  child: Center(
                    child: Text(
                      "Statistiques des corners",
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
                  child: const Text(
                    "43,2",
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
                              const Text("3,3", style: AppTextStyle.bodysmall),
                            ],
                          ),
                          Transform.rotate(
                            angle: 3.14159265359,
                            child: LinearProgressIndicator(
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.red,
                              value: 12 / 20,
                              minHeight: 5,
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
                              const Text("3,3", style: AppTextStyle.bodysmall),
                            ],
                          ),
                          Transform.rotate(
                            angle: 3.14159265359,
                            child: LinearProgressIndicator(
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.red,
                              value: 12 / 20,
                              minHeight: 5,
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
                              const Text("3,3", style: AppTextStyle.bodysmall),
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
                            value: 12 / 20,
                            minHeight: 5,
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
                              const Text("3,3", style: AppTextStyle.bodysmall),
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
                            value: 12 / 20,
                            minHeight: 5,
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
                    child: const Text(
                      "43,1",
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
