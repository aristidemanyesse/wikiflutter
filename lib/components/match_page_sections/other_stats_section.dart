import 'package:flutter/material.dart';
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
        vertical: AppConstante.PADDING / 2,
        horizontal: AppConstante.PADDING / 3,
      ),
      child: const Column(
        children: [
          OtherStatBloc(),
          OtherStatBloc(),
          OtherStatBloc(),
          OtherStatBloc(),
          OtherStatBloc(),
        ],
      ),
    );
  }
}
