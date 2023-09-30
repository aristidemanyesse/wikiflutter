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
      child: Column(
        children: [
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
