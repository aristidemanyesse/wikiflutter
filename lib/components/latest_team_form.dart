import 'dart:convert';
import 'package:flutter/material.dart';

class LatestTeamForm extends StatelessWidget {
  final String forme;
  final bool reverse;

  const LatestTeamForm({
    super.key,
    required this.forme,
    this.reverse = false,
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
            .map((e) => Container(
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
