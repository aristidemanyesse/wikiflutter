import 'package:flutter/material.dart';
import 'package:wikibet/tools/tools.dart';

class B2BMatchStatsCard extends StatelessWidget {
  const B2BMatchStatsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: SizedBox(
            width: double.infinity,
            child: DataTable(
              columnSpacing: 3,
              horizontalMargin: 15,
              dividerThickness: 0.0,
              columns: [
                DataColumn(
                  label: Center(
                    child: Image.asset(
                      "assets/images/logo.png",
                      height: 45,
                      width: 45,
                    ),
                  ),
                ),
                const DataColumn(label: Flexible(child: Text(""))),
                const DataColumn(
                    label: Flexible(
                  child: Center(
                    child: Text(
                      "VS",
                      style: AppTextStyle.titleMedium,
                    ),
                  ),
                )),
                const DataColumn(label: Flexible(child: Text(""))),
                DataColumn(
                  label: Center(
                    child: Image.asset(
                      "assets/images/logo.png",
                      height: 45,
                      width: 45,
                    ),
                  ),
                ),
              ],
              rows: [
                const LigneB2B("PPG", 3, 1.2, 2.3).build(context),
                const LigneB2B("Elo", 2500, 1998, 2229).build(context),
                const LigneB2B("Elo %", 1, 0.2, 0.76).build(context),
                const LigneB2B("xG+", 10, 1.2, 4.3).build(context),
                const LigneB2B("xG-", 10, 3, 2.3).build(context)
              ],
            )),
      ),
    );
  }
}

class LigneB2B {
  final String title;
  final double max;
  final double valueA;
  final double valueB;

  const LigneB2B(this.title, this.max, this.valueA, this.valueB);

  DataRow build(BuildContext context) {
    return DataRow(cells: [
      DataCell(Text(
        "$valueA",
        style: const TextStyle(fontSize: 11),
      )),
      DataCell(
        SizedBox(
          width: MediaQuery.sizeOf(context).width / 4,
          child: Transform.rotate(
            angle: 3.14159265359,
            child: LinearProgressIndicator(
              borderRadius: BorderRadius.circular(40),
              color: Colors.red,
              value: valueA / max,
              minHeight: 5,
            ),
          ),
        ),
      ),
      DataCell(Center(
          child: SizedBox(
        width: MediaQuery.sizeOf(context).width / 8,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title, style: AppTextStyle.bodygras),
          ],
        ),
      ))),
      DataCell(SizedBox(
        width: MediaQuery.sizeOf(context).width / 4,
        child: LinearProgressIndicator(
          borderRadius: BorderRadius.circular(40),
          color: Colors.green,
          value: valueB / max,
          minHeight: 5,
        ),
      )),
      DataCell(Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            "$valueB",
            style: const TextStyle(fontSize: 11),
          ),
        ],
      )),
    ]);
  }
}
