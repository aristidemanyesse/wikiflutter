import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:wikibet/components/logo_markers.dart';
import 'package:wikibet/tools/tools.dart';
import 'package:intl/intl.dart';

class Calendar extends StatefulWidget {
  const Calendar({super.key});

  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  _CalendarState();

  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  DateFormat dateFormat = DateFormat.yMMMMd();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.back();
      },
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: GestureDetector(
          onTap: () {},
          child: Center(
            child: Container(
              margin: EdgeInsets.all(AppConstante.DISTANCE * 2),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(AppConstante.DISTANCE),
                child: Container(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        height: 50,
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(
                            horizontal: AppConstante.DISTANCE / 2),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                          AppConstante.grenn1.withOpacity(0.5),
                          AppConstante.primaryBlue.withOpacity(0.5),
                        ])),
                        child: Row(
                          children: [
                            const MyLogo(
                              path: "assets/images/logo.png",
                              height: 35,
                              width: 35,
                            ),
                            Expanded(
                              child: Center(
                                child: Text(
                                  "$_focusedDay",
                                  style: AppTextStyle.titleMedium,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.15),
                        ),
                        width: Get.size.width,
                        child: Container(
                          padding: EdgeInsets.all(AppConstante.DISTANCE / 2),
                          child: Center(
                            child: TableCalendar(
                              locale: 'fr_FR',
                              availableCalendarFormats: {
                                CalendarFormat.month: 'Month'
                              },
                              calendarBuilders: CalendarBuilders(
                                dowBuilder: (context, day) {
                                  if (day.weekday == DateTime.sunday) {
                                    final text = DateFormat.E().format(day);
                                    return Center(
                                      child: Text(
                                        text,
                                        style:
                                            const TextStyle(color: Colors.red),
                                      ),
                                    );
                                  }
                                  return null;
                                },
                                defaultBuilder: (context, date, events) {
                                  bool isSunday =
                                      date.weekday == DateTime.sunday;
                                  return Container(
                                    margin: const EdgeInsets.only(bottom: 15.0),
                                    child: Text(
                                      '${date.day}',
                                      style: TextStyle(
                                        color: isSunday
                                            ? Colors.red
                                            : Colors.black87,
                                      ),
                                    ),
                                  );
                                },
                              ),
                              selectedDayPredicate: (day) {
                                // Mettez en surbrillance le jour sélectionné
                                return isSameDay(_selectedDay, day);
                              },
                              onDaySelected: (selectedDay, focusedDay) {
                                setState(() {
                                  _selectedDay = selectedDay;
                                  _focusedDay = focusedDay;
                                });
                                Get.back();
                              },
                              onDisabledDayTapped: (selectedDay) {
                                setState(() {
                                  _selectedDay = selectedDay;
                                });
                                Get.back();
                              },
                              onPageChanged: (focusedDay) {
                                _focusedDay = focusedDay;
                              },
                              firstDay: DateTime.utc(1993, 07, 23),
                              lastDay:
                                  DateTime.now().add(const Duration(days: 365)),
                              focusedDay: _focusedDay,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
