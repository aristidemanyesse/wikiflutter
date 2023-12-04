import 'package:flutter/material.dart';
import 'package:wikibet/tools/tools.dart';

class EloLabel extends StatelessWidget {
  const EloLabel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Theme.of(context).scaffoldBackgroundColor),
      child: const Text(
        "1234",
        style: AppTextStyle.body,
      ),
    );
  }
}
