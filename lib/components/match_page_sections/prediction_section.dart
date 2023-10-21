import 'package:flutter/material.dart';
import 'package:wikibet/components/match_page_sections/bloc_prediction.dart';
import 'package:wikibet/tools/tools.dart';

class PredictionSection extends StatelessWidget {
  const PredictionSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: AppConstante.PADDING / 2, vertical: AppConstante.PADDING),
      child: const Column(
        children: [
          BlocPrediction(),
          BlocPrediction(),
          BlocPrediction(),
          BlocPrediction(),
        ],
      ),
    );
  }
}
