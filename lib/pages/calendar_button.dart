import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wikibet/components/calendar.dart';
import 'package:wikibet/controllers/CalendarController.dart';
import 'package:wikibet/tools/tools.dart';

class CalendarButton extends StatelessWidget {
  CalendarButton({
    super.key,
  });

  CalendarController calendar = Get.find();

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Get.dialog(const Calendar());
      },
      icon: Stack(
        alignment: Alignment.center,
        children: [
          Opacity(
            opacity: 0.7,
            child: Icon(
              Icons.calendar_today_outlined,
              size: AppConstante.PADDING * 1.5,
            ),
          ),
          Positioned(
            top: 11,
            left: 8.5,
            child: Obx(() {
              return Center(
                child: Text(
                  "${calendar.selectedDateNumber}",
                  style: AppTextStyle.bodygras,
                ),
              );
            }),
          )
        ],
      ),
    );
  }
}
