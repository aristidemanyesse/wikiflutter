import 'package:flutter/material.dart';
import 'package:wikibet/models/bettingApp/oddMatch.dart';
import 'package:wikibet/models/predictionApp/prediction.dart';
import 'package:wikibet/tools/tools.dart';

class PredictionTip extends StatelessWidget {
  final Prediction prediction;

  const PredictionTip({
    super.key,
    required this.prediction,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: AppConstante.PADDING / 5),
      child: Card(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 7),
          decoration: BoxDecoration(
              color: prediction.isChecked == null
                  ? Colors.white
                  : prediction.isChecked!
                      ? AppConstante.grenn2
                      : Colors.red,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Colors.grey)),
          child: Text("${prediction.type?.name}:${prediction.mode?.name}",
              style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w500,
                  color: prediction.isChecked == null
                      ? Colors.black54
                      : Colors.white)),
        ),
      ),
    );
  }
}
