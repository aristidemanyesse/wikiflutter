import 'package:flutter/material.dart';
import 'package:wikibet/tools/tools.dart';

class FactLigne extends StatelessWidget {
  const FactLigne({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
          const Expanded(
            child: Text(
              "ument is null, the text will use the ceci est un teste ajouté style from the close",
              style: AppTextStyle.body,
              maxLines: 2,
            ),
          )
        ],
      ),
    );
  }
}
