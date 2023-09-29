import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';

class MatchsPage extends StatefulWidget {
  const MatchsPage({super.key});

  @override
  State<MatchsPage> createState() => _MatchsPageState();
}

class _MatchsPageState extends State<MatchsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1.0,
        leading: Image.asset(
          "assets/images/logo.png",
          height: 10,
          width: 10,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Stack(
                alignment: Alignment.center,
                children: [
                  Opacity(
                    child: Icon(
                      Icons.calendar_month,
                      size: 30,
                    ),
                    opacity: 0.2,
                  ),
                  Text(
                    "23",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  )
                ],
              )),
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        ],
        title:
            const Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Bonjour",
                style: TextStyle(fontSize: 13),
              ),
              Text(
                "Fabien Oligard",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              )
            ],
          )
        ]),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: <Widget>[
            MatchCard(),
            SizedBox(
              height: 25,
            ),
            EnteteMatchPage(),
            SizedBox(
              height: 25,
            ),
            MatchTeamsrankingCard(),
            SizedBox(
              height: 25,
            ),
            B2BMatchStatsCard(),
            SizedBox(
              height: 25,
            ),
            Card(
              child: Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/logo.png",
                            height: 40,
                            width: 40,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                              child: Text("Union Sportive de Saint Galloise",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold))),
                        ],
                      ),
                      Divider(
                        height: 1,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 15),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 10),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 7,
                                    width: 7,
                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: Text(
                                      "ument is null, the text will use the ceci est un teste ajouté style from the close",
                                      style: TextStyle(fontSize: 12),
                                      maxLines: 2,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 10),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 7,
                                    width: 7,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: Text(
                                      "ument is null, the text will use the ceci est un teste ajouté style from the close",
                                      style: TextStyle(fontSize: 12),
                                      maxLines: 2,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}

class B2BMatchStatsCard extends StatelessWidget {
  const B2BMatchStatsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
            width: double.infinity,
            child: DataTable(
              columnSpacing: 3,
              horizontalMargin: 15,
              dividerThickness: 0.0,
              headingRowColor: MaterialStateColor.resolveWith(
                  (states) => (Colors.blueAccent)),
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
                DataColumn(label: Flexible(child: Text(""))),
                DataColumn(
                    label: Flexible(
                  child: Center(
                    child: Text(
                      "VS",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                )),
                DataColumn(label: Flexible(child: Text(""))),
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
                DataRow(cells: [
                  DataCell(Text(
                    "22,3",
                    style: TextStyle(fontSize: 11),
                  )),
                  DataCell(
                    Container(
                      width: MediaQuery.sizeOf(context).width / 4,
                      child: Transform.rotate(
                        angle: 3.14159265359,
                        child: LinearProgressIndicator(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.red,
                          value: 0.46,
                          minHeight: 5,
                        ),
                      ),
                    ),
                  ),
                  DataCell(Center(
                      child: Container(
                    width: MediaQuery.sizeOf(context).width / 8,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("PPG"),
                      ],
                    ),
                  ))),
                  DataCell(Container(
                    width: MediaQuery.sizeOf(context).width / 4,
                    child: LinearProgressIndicator(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.green,
                      value: 0.78,
                      minHeight: 5,
                    ),
                  )),
                  DataCell(Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "22,3",
                        style: TextStyle(fontSize: 11),
                      ),
                    ],
                  )),
                ]),
              ],
            )),
      ),
    );
  }
}

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
        child: Container(
            width: double.infinity,
            child: DataTable(
              columnSpacing: 17,
              horizontalMargin: 10,
              headingRowHeight: 40,
              headingRowColor: MaterialStateColor.resolveWith(
                  (states) => (Colors.blueAccent)),
              columns: [
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
                  DataCell(Text("1")),
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
                    margin: EdgeInsets.only(right: 10),
                    padding: EdgeInsets.symmetric(horizontal: 7, vertical: 5),
                    decoration: BoxDecoration(
                        color: Colors.grey[350],
                        borderRadius: BorderRadius.circular(5)),
                    child: Text("1234",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w500)),
                  )),
                  DataCell(Container(
                    margin: EdgeInsets.only(right: 10),
                    padding: EdgeInsets.symmetric(horizontal: 7, vertical: 5),
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(5)),
                    child: Text("2,54",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.w500)),
                  )),
                  DataCell(Text("45")),
                ]),
                DataRow(cells: [
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

class EnteteMatchPage extends StatelessWidget {
  const EnteteMatchPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                child: Text(
              "Manchester United",
              style: TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            )),
            Image.asset(
              "assets/images/logo.png",
              height: 30,
              width: 30,
            ),
            SizedBox(
              width: 5,
            ),
            Row(
              children: [
                Text("0 : 0",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))
              ],
            ),
            Image.asset(
              "assets/images/logo.png",
              height: 30,
              width: 30,
            ),
            SizedBox(
              width: 5,
            ),
            Expanded(
                child: Text(
              "Union Sportive de Saint Galloise",
              style: TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            )),
          ],
        ),
      ),
    );
  }
}

class MatchCard extends StatelessWidget {
  const MatchCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  "assets/images/logo.png",
                  height: 30,
                  width: 30,
                ),
                SizedBox(
                  width: 5,
                ),
                Text("Championnat de colombie"),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                    child: Text(
                  "Manchester United",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                )),
                Image.asset(
                  "assets/images/logo.png",
                  height: 45,
                  width: 45,
                ),
                SizedBox(
                  width: 10,
                ),
                Row(
                  children: [
                    Text("0 : 0",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold))
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Image.asset(
                  "assets/images/logo.png",
                  height: 45,
                  width: 45,
                ),
                Expanded(
                    child: Text(
                  "Union Sportive de Saint Galloise",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "12 Décembre 2023 17:45",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(12, (index) {
                  return Container(
                    margin: EdgeInsets.only(right: 10),
                    padding: EdgeInsets.symmetric(horizontal: 7, vertical: 5),
                    decoration: BoxDecoration(
                        color: Colors.grey[350],
                        borderRadius: BorderRadius.circular(5)),
                    child: Text("+1,5 but",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w500)),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
