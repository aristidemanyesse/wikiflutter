import 'package:flutter/material.dart';
import 'package:wikibet/tools/tools.dart';

class OtherStatsSection extends StatelessWidget {
  const OtherStatsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppConstante.PADDING / 3,
      ),
      child: const Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // OtherStatBloc(),
                  // OtherStatBloc(),
                  // OtherStatBloc(),
                  // OtherStatBloc(),
                  // OtherStatBloc(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
