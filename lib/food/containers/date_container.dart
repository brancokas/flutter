import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DateContainer extends StatefulWidget with ChangeNotifier {
  DateContainer({super.key, required this.selectedDate, required this.date});
  String selectedDate;
  bool selected = false, error = false;
  DateTime date;

  bool getSelected() => selected;

  bool getError() => error;

  DateTime getDate() => date;

  void setError(bool error) {
    this.error = error;
    notifyListeners();
  }

  static DateTime fromStringToDate(String value) {
    List<String> list = value.split('-');
    int year, month, day;
    day = int.parse(list.elementAt(0));
    month = int.parse(list.elementAt(1));
    year = int.parse(list.elementAt(2));
    return DateTime(year, month, day);
  }

  @override
  State<DateContainer> createState() => _DateContainerState();
}

class _DateContainerState extends State<DateContainer> {
  @override
  Widget build(BuildContext context) {
    DateTime firstDate() {
      DateTime dateTime =
          DateTime.now().subtract(const Duration(days: (365 * 100)));
      return dateTime;
    }

    void dateSaved(DateTime? value) {
      if (value != null) {
        widget.date = value;
        setState(() {
          int year = value.year, month = value.month, day = value.day;
          widget.selectedDate = "$day/$month/$year";
        });
        widget.setError(false);
        widget.selected = true;
      }
    }

    return Padding(
        padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
        child: GestureDetector(
          onTap: () async {
            DateTime? newDate = await showDatePicker(
                context: context,
                initialDate: widget.date,
                firstDate: firstDate(),
                lastDate: DateTime.now());
            dateSaved(newDate);
          },
          child: Container(
            height: 60,
            decoration: BoxDecoration(
                border: Border.all(
                  width: 2.5,
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  widget.selectedDate,
                  style: GoogleFonts.aBeeZee(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                const Icon(
                  Icons.event,
                  color: Colors.white,
                )
              ],
            ),
          ),
        ));
  }
}
