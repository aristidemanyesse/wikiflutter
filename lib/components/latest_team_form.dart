import 'package:flutter/material.dart';

class LatestTeamForm extends StatelessWidget {
  const LatestTeamForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.grey, borderRadius: BorderRadius.circular(15)),
          height: 4,
          width: 13,
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.green, borderRadius: BorderRadius.circular(15)),
          height: 4,
          width: 13,
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.green, borderRadius: BorderRadius.circular(15)),
          height: 4,
          width: 13,
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.green, borderRadius: BorderRadius.circular(15)),
          height: 4,
          width: 13,
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.red, borderRadius: BorderRadius.circular(15)),
          height: 4,
          width: 13,
        ),
      ],
    );
  }
}
