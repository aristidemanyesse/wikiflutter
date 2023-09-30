import 'package:flutter/material.dart';
import 'package:wikibet/components/historiques_matchs.dart';
import 'package:wikibet/tools/tools.dart';

class HistoriquesSection extends StatelessWidget {
  const HistoriquesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppConstante.DISTANCE / 2),
      margin: EdgeInsets.symmetric(vertical: AppConstante.DISTANCE / 2),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const HistoriquesMatchs(),
            SizedBox(
              height: AppConstante.DISTANCE * 1.5,
            ),
            const HistoriquesMatchs(),
            SizedBox(
              height: AppConstante.DISTANCE,
            ),
          ],
        ),
      ),
    );
  }
}
