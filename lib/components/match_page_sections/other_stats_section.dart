import 'package:flutter/material.dart';
import 'package:wikibet/components/logo_markers.dart';
import 'package:wikibet/components/other_stat_bloc.dart';
import 'package:wikibet/tools/tools.dart';

class OtherStatsSection extends StatelessWidget {
  const OtherStatsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppConstante.DISTANCE,
      ),
      margin: EdgeInsets.symmetric(vertical: AppConstante.DISTANCE / 2),
      child: Column(
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  child: const Column(
                    children: [
                      MyLogo(
                        path: "assets/images/logo.png",
                        height: 40,
                        width: 40,
                      ),
                      Text("real de madrid")
                    ],
                  ),
                ),
                const Spacer(),
                Container(
                  child: const Column(
                    children: [
                      MyLogo(
                        path: "assets/images/logo.png",
                        height: 40,
                        width: 40,
                      ),
                      Text("real de madrid")
                    ],
                  ),
                )
              ],
            ),
          ),
          const Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  OtherStatBloc(),
                  OtherStatBloc(),
                  OtherStatBloc(),
                  OtherStatBloc(),
                  OtherStatBloc(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
