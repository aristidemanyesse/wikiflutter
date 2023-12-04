import 'package:flutter/material.dart';
import 'package:wikibet/tools/tools.dart';

class PPGLabel extends StatelessWidget {
  final double ppg;

  const PPGLabel({
    super.key,
    required this.ppg,
  });

  @override
  Widget build(BuildContext context) {
    Color color = Colors.red;
    if (ppg <= 0.5) {
      color = Colors.grey;
    } else if (ppg > 0.5 && ppg <= 1) {
      color = Colors.red;
    } else if (ppg > 1 && ppg <= 1.5) {
      color = const Color.fromARGB(255, 243, 118, 1);
    } else if (ppg > 1.5 && ppg <= 2) {
      color = Colors.blueAccent;
    } else if (ppg > 2 && ppg <= 2.5) {
      color = const Color.fromARGB(255, 64, 132, 82);
    } else if (ppg > 2.5 && ppg <= 3) {
      color = Colors.green;
    }
    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 5),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(5)),
      child: Text(
        "$ppg",
        style: AppTextStyle.bodygras,
      ),
    );
  }
}
