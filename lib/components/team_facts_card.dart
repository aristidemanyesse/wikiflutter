import 'package:flutter/material.dart';
import 'package:wikibet/tools/tools.dart';

class TeamFactsCard extends StatelessWidget {
  const TeamFactsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(AppConstante.DISTANCE / 2),
        margin: EdgeInsets.symmetric(vertical: AppConstante.DISTANCE / 2),
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
                  width: AppConstante.DISTANCE / 2,
                ),
                const Expanded(
                  child: Text("Union Sportive de Saint Galloise",
                      style: AppTextStyle.titleMedium),
                ),
              ],
            ),
            const Divider(
              height: 1,
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              margin: const EdgeInsets.only(left: 15),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 7,
                          width: 7,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(100)),
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
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
