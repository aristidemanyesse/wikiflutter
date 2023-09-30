import 'package:flutter/material.dart';

class MatchTeamsrankingCard extends StatelessWidget {
  const MatchTeamsrankingCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: SizedBox(
            width: double.infinity,
            child: DataTable(
              columnSpacing: 17,
              horizontalMargin: 10,
              headingRowHeight: 40,
              headingRowColor: MaterialStateColor.resolveWith(
                  (states) => (Theme.of(context).primaryColorDark)),
              columns: const [
                DataColumn(
                    label: Text(
                  "#",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
                DataColumn(
                    label: Text(
                  "Team",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
                DataColumn(
                    label: Text("Forme",
                        style: TextStyle(fontWeight: FontWeight.bold))),
                DataColumn(
                    label: Center(
                        child: Text("Elo",
                            style: TextStyle(fontWeight: FontWeight.bold)))),
                DataColumn(
                    label: Center(
                        child: Text("PPG",
                            style: TextStyle(fontWeight: FontWeight.bold)))),
                DataColumn(
                    label: Center(
                        child: Text("Pts",
                            style: TextStyle(fontWeight: FontWeight.bold)))),
              ],
              rows: [
                DataRow(cells: [
                  const DataCell(Text("1")),
                  DataCell(
                    Image.asset(
                      "assets/images/logo.png",
                      height: 30,
                      width: 30,
                    ),
                  ),
                  DataCell(Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(15)),
                        height: 4,
                        width: 13,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(15)),
                        height: 4,
                        width: 13,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(15)),
                        height: 4,
                        width: 13,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(15)),
                        height: 4,
                        width: 13,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(15)),
                        height: 4,
                        width: 13,
                      ),
                    ],
                  )),
                  DataCell(Container(
                    margin: const EdgeInsets.only(right: 10),
                    padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 5),
                    decoration: BoxDecoration(
                        color: Colors.grey[350],
                        borderRadius: BorderRadius.circular(5)),
                    child: const Text("1234",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w500)),
                  )),
                  DataCell(Container(
                    margin: const EdgeInsets.only(right: 10),
                    padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 5),
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(5)),
                    child: const Text("2,54",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.w500)),
                  )),
                  const DataCell(Text("45")),
                ]),
                const DataRow(cells: [
                  DataCell(Text("34")),
                  DataCell(Text("45")),
                  DataCell(Text("45")),
                  DataCell(Text("45")),
                  DataCell(Text("45")),
                  DataCell(Text("45")),
                ]),
              ],
            )),
      ),
    ));
  }
}
