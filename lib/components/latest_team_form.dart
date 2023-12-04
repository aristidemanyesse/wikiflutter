import 'package:flutter/material.dart';
import 'package:wikibet/tools/tools.dart';

class LatestTeamForm extends StatelessWidget {
  final String forme;
  final bool reverse;
  final bool rounded;

  const LatestTeamForm({
    super.key,
    required this.forme,
    this.reverse = false,
    this.rounded = false,
  });

  @override
  Widget build(BuildContext context) {
    var form = forme
        .replaceAll("]", "")
        .replaceAll("[", "")
        .replaceAll(" ", "")
        .replaceAll("'", "");
    List<String> listFormes = form.split(",");
    if (reverse) {
      listFormes = (listFormes.reversed).toList();
    }
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: listFormes
            .map((e) => rounded
                ? ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Container(
                      decoration: BoxDecoration(
                        color: e == "N"
                            ? Colors.grey
                            : e == "V"
                                ? Colors.green
                                : Colors.red,
                      ),
                      height: AppConstante.PADDING,
                      width: AppConstante.PADDING,
                      child: Center(
                        child: Text(
                          e,
                          style: AppTextStyle.bodysmall
                              .copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                  )
                : Container(
                    decoration: BoxDecoration(
                        color: e == "N"
                            ? Colors.grey
                            : e == "V"
                                ? Colors.green
                                : Colors.red,
                        borderRadius: BorderRadius.circular(15)),
                    height: 4,
                    width: 13,
                  ))
            .toList());
  }
}
