import 'package:flutter/material.dart';
import 'package:wikibet/tools/tools.dart';

class PredictionTip extends StatelessWidget {
  const PredictionTip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: AppConstante.PADDING / 5),
      child: Card(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 7),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Colors.grey)),
          child: const Text("+1,5 but",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500)),
        ),
      ),
    );
  }
}
