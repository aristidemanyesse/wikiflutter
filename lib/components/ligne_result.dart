import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wikibet/tools/tools.dart';

class LigneResult {
  final String title;
  final int valueA;
  final int valueB;

  const LigneResult(this.title, this.valueA, this.valueB);

  DataRow build(BuildContext context) {
    int max = valueA + valueB;

    return DataRow(cells: [
      DataCell(Container(
        height: 30,
        width: 50,
        decoration: BoxDecoration(
            border: (valueA <= valueB) ? Border.all() : null,
            color: (valueA > valueB) ? AppConstante.grenn1 : Colors.transparent,
            borderRadius: BorderRadius.circular(AppConstante.PADDING / 2)),
        child: Center(
          child: Text(
            "$valueA",
            style: AppTextStyle.bodygras.copyWith(
                color: (valueA > valueB) ? Colors.white : Colors.black,
                fontSize: 14),
          ),
        ),
      )),
      // DataCell(
      //   SizedBox(
      //     width: Get.size.width / 5,
      //     child: Transform.rotate(
      //       angle: 3.14159265359,
      //       child: LinearProgressIndicator(
      //         backgroundColor: Colors.transparent,
      //         borderRadius: BorderRadius.circular(40),
      //         color: Colors.red,
      //         value: max > 0 ? valueA / max : 0,
      //         minHeight: 5,
      //       ),
      //     ),
      //   ),
      // ),
      DataCell(Center(
          child: SizedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title,
                style: AppTextStyle.titleSmall.copyWith(color: Colors.black54)),
          ],
        ),
      ))),
      // DataCell(SizedBox(
      //   width: Get.size.width / 5,
      //   child: LinearProgressIndicator(
      //     backgroundColor: Colors.transparent,
      //     borderRadius: BorderRadius.circular(40),
      //     color: Colors.green,
      //     value: max > 0 ? valueB / max : 0,
      //     minHeight: 5,
      //   ),
      // )),
      DataCell(Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 30,
            width: 50,
            decoration: BoxDecoration(
                color: (valueA < valueB)
                    ? AppConstante.grenn1
                    : Colors.transparent,
                border: (valueA >= valueB) ? Border.all() : null,
                borderRadius: BorderRadius.circular(AppConstante.PADDING / 2)),
            child: Center(
              child: Text(
                "$valueB",
                style: AppTextStyle.bodygras.copyWith(
                    fontSize: 14,
                    color: (valueA < valueB) ? Colors.white : Colors.black),
              ),
            ),
          )
        ],
      )),
    ]);
  }
}
