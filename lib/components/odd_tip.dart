import 'package:flutter/material.dart';
import 'package:wikibet/models/bettingApp/oddMatch.dart';
import 'package:wikibet/tools/tools.dart';

class OddTip extends StatelessWidget {
  final OddsMatch odd;

  const OddTip({
    super.key,
    required this.odd,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        OddElement(title: "1", cote: odd.home),
        SizedBox(
          width: AppConstante.PADDING,
        ),
        OddElement(title: "N", cote: odd.draw),
        SizedBox(
          width: AppConstante.PADDING,
        ),
        OddElement(title: "2", cote: odd.away),
      ],
    );
  }
}

class OddElement extends StatelessWidget {
  const OddElement({
    super.key,
    required this.cote,
    required this.title,
  });

  final double cote;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: AppTextStyle.bodysmall,
        ),
        SizedBox(
          height: 3,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          decoration: BoxDecoration(
              color: Colors.white70,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Colors.grey)),
          child: Text("${cote}",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              )),
        ),
      ],
    );
  }
}
