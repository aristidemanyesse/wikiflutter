import 'package:flutter/material.dart';
import 'package:wikibet/tools/tools.dart';

class OtherStatBloc extends StatelessWidget {
  const OtherStatBloc({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: AppConstante.DISTANCE),
      child: Column(
        children: [
          const Divider(),
          Row(
            children: [
              Icon(
                Icons.supervisor_account,
                size: AppConstante.DISTANCE,
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
                size: AppConstante.DISTANCE,
              ),
            ],
          ),
          const Divider(),
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(AppConstante.DISTANCE / 4),
                  child: const Text(
                    "43,2",
                    style: AppTextStyle.titleMedium,
                  ),
                ),
                SizedBox(
                  width: AppConstante.DISTANCE / 4,
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
                                size: AppConstante.DISTANCE / 3,
                              ),
                              SizedBox(
                                width: AppConstante.DISTANCE / 4,
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
                        height: AppConstante.DISTANCE / 3,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.circle,
                                color: AppConstante.orange,
                                size: AppConstante.DISTANCE / 3,
                              ),
                              SizedBox(
                                width: AppConstante.DISTANCE / 4,
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
                    padding: EdgeInsets.all(AppConstante.DISTANCE / 2),
                    child: GestureDetector(
                        child: Icon(
                      Icons.bar_chart,
                      size: AppConstante.DISTANCE,
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
                                width: AppConstante.DISTANCE / 4,
                              ),
                              Icon(
                                Icons.circle,
                                color: AppConstante.grenn2,
                                size: AppConstante.DISTANCE / 3,
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
                        height: AppConstante.DISTANCE / 3,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const Text("3,3", style: AppTextStyle.bodysmall),
                              SizedBox(
                                width: AppConstante.DISTANCE / 4,
                              ),
                              Icon(
                                Icons.circle,
                                color: AppConstante.orange,
                                size: AppConstante.DISTANCE / 3,
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
                  width: AppConstante.DISTANCE / 4,
                ),
                Center(
                  child: Container(
                    padding: EdgeInsets.all(AppConstante.DISTANCE / 4),
                    child: const Text(
                      "43,1",
                      style: AppTextStyle.titleMedium,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}