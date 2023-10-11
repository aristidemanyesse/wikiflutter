import 'package:flutter/material.dart';
import 'package:wikibet/components/logo_markers.dart';
import 'package:wikibet/tools/tools.dart';

class LigneProno extends StatelessWidget {
  const LigneProno({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: AppConstante.DISTANCE / 3,
            vertical: AppConstante.DISTANCE / 2),
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
                      const MyLogo(
                        path: "assets/images/logo.png",
                        height: 20,
                        width: 20,
                      ),
                      SizedBox(
                        width: AppConstante.DISTANCE / 2,
                      ),
                      Expanded(
                        child: Text(
                          "Real de Madrid",
                          style: AppTextStyle.titleSmall
                              .copyWith(fontWeight: FontWeight.normal),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const MyLogo(
                        path: "assets/images/logo.png",
                        height: 20,
                        width: 20,
                      ),
                      SizedBox(
                        width: AppConstante.DISTANCE / 2,
                      ),
                      Expanded(
                        child: Text(
                          "Real de Madrid",
                          style: AppTextStyle.titleSmall
                              .copyWith(fontWeight: FontWeight.normal),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  const Text("V1", style: AppTextStyle.titleLarge),
                  SizedBox(
                    height: AppConstante.DISTANCE / 5,
                  ),
                  Text("1,23",
                      style:
                          AppTextStyle.titleSmall.copyWith(color: Colors.grey))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
