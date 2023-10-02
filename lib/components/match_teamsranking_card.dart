import 'package:flutter/material.dart';
import 'package:wikibet/components/latest_team_form.dart';
import 'package:wikibet/tools/tools.dart';

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
              columns: const [
                DataColumn(label: Text("#", style: AppTextStyle.titleSmall)),
                DataColumn(
                    label: Text(
                  "Team",
                  style: AppTextStyle.titleSmall,
                )),
                DataColumn(
                    label: Text("Forme", style: AppTextStyle.titleSmall)),
                DataColumn(
                    label: Center(
                        child: Text("Elo", style: AppTextStyle.titleSmall))),
                DataColumn(
                    label: Center(
                        child: Text("PPG", style: AppTextStyle.titleSmall))),
                DataColumn(
                    label: Center(
                        child: Text("Pts", style: AppTextStyle.titleSmall))),
              ],
              rows: [
                DataRow(cells: [
                  const DataCell(Text(
                    "1",
                    style: AppTextStyle.body,
                  )),
                  DataCell(
                    Image.asset(
                      "assets/images/logo.png",
                      height: 30,
                      width: 30,
                    ),
                  ),
                  DataCell(LatestTeamForm()),
                  DataCell(Container(
                    margin: const EdgeInsets.only(right: 10),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 7, vertical: 5),
                    decoration: BoxDecoration(
                        color: Colors.grey[350],
                        borderRadius: BorderRadius.circular(5)),
                    child: const Text(
                      "1234",
                      style: AppTextStyle.body,
                    ),
                  )),
                  DataCell(Container(
                    margin: const EdgeInsets.only(right: 10),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 7, vertical: 5),
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(5)),
                    child: const Text(
                      "2,54",
                      style: AppTextStyle.body,
                    ),
                  )),
                  const DataCell(Text(
                    "45",
                    style: AppTextStyle.body,
                  )),
                ]),
              ],
            )),
      ),
    ));
  }
}
