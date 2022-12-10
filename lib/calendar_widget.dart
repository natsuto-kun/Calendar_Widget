library calendar_widget;

import 'package:calendar_logic/calendar_logic.dart';
import 'package:flutter/material.dart';

/// A Calculator.
class Calendar extends StatelessWidget {
  const Calendar({
    super.key,
    required this.date,
  });

  final DateTime date;

  @override
  Widget build(BuildContext context) {
    final calendarData = CalendarBuilder().build(date);
    return Container();
  }
}

class _DateBox extends StatelessWidget {
  const _DateBox(
    this.label, {
    required this.weekday,
  });

  final String label;

  final int weekday;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black12, width: 1),
          color: weekday == 6
              ? Colors.blue.shade50
              : weekday == 7
                  ? Colors.red.shade50
                  : Colors.white,
        ),
        child: Center(
          child: Text(label),
        ),
      ),
    );
  }
}
