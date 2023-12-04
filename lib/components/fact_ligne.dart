import 'package:flutter/material.dart';
import 'package:wikibet/models/statsApp/fact.dart';
import 'package:wikibet/models/teamApp/editionTeam.dart';
import 'package:wikibet/tools/tools.dart';

class FactLigne extends StatelessWidget {
  final Fact fact;
  final bool domicile;
  const FactLigne({
    super.key,
    required this.fact,
    required this.domicile,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 7,
            width: 7,
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(100)),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Text(
              Fact.sentence(fact, domicile),
              style: AppTextStyle.body,
              maxLines: 2,
            ),
          )
        ],
      ),
    );
  }
}
