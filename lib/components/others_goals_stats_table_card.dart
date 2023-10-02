import 'package:flutter/material.dart';

class OthersGoalsStatsTableCard extends StatelessWidget {
  const OthersGoalsStatsTableCard({
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
              horizontalMargin: 0,
              columnSpacing: 0,
              columns: [
                DataColumn(
                    label: SizedBox(
                        width: MediaQuery.sizeOf(context).width * 0.3,
                        child: const Text(""))),
                DataColumn(
                  label: SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.35,
                    child: Center(
                      child: Image.asset(
                        "assets/images/logo.png",
                        height: 40,
                        width: 40,
                      ),
                    ),
                  ),
                ),
                DataColumn(
                  label: SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.35,
                    child: Center(
                      child: Image.asset(
                        "assets/images/logo.png",
                        height: 40,
                        width: 40,
                      ),
                    ),
                  ),
                ),
              ],
              rows: [
                DataRow(cells: [
                  DataCell(SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.3,
                    child: const Center(
                      child: Text(
                        "+ 2,5 buts",
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  )),
                  DataCell(
                    Container(
                      width: MediaQuery.sizeOf(context).width * 0.35,
                      color: Colors.green.withOpacity(0.3),
                      child: const Center(
                        child: Text(
                          "75 %",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  DataCell(
                    Container(
                      width: MediaQuery.sizeOf(context).width * 0.35,
                      color: Colors.orange.withOpacity(0.3),
                      child: const Center(
                        child: Text(
                          "45 %",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ]),
              ],
            )),
      ),
    );
  }
}
