import 'package:get/get.dart';
import "package:intl/intl.dart";
import 'package:intl/date_symbol_data_local.dart';

class CalendarController extends GetxController {
  DateTime today = DateTime.now();
  Rx<DateTime?> selectedDate = Rx<DateTime?>(null);
  RxString selectedDate_ = "".obs;
  RxString selectedDateNumber = "".obs;

  @override
  void onInit() {
    initializeDateFormatting();

    DateFormat dateFormat = DateFormat.yMMMMd('fr');
    DateFormat dateFormat2 = DateFormat.d('fr');

    selectedDate.value = today;
    selectedDate_.value = dateFormat.format(selectedDate.value!);
    selectedDateNumber.value = dateFormat2.format(selectedDate.value!);
    super.onInit();

    ever(selectedDate, (value) {
      selectedDate_.value = dateFormat.format(selectedDate.value!);
      selectedDateNumber.value = dateFormat2.format(selectedDate.value!);
    });
  }
}
