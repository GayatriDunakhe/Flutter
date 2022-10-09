import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import '../Functions/CustomTextStyle.dart';

DaysComponent(){

  return TableCalendar(
    calendarStyle: CalendarStyle(
      defaultTextStyle: cstmTextStyle(fs:18,fc: Colors.black54),
      weekendTextStyle: cstmTextStyle(fs:18,fc: Colors.black54),
      todayTextStyle: cstmTextStyle(fs:18,fc: Color(0xFFFF46B5).withOpacity(0.70),),
      todayDecoration: BoxDecoration(
      color: Colors.white,
      shape: BoxShape.circle,),
    ),
    calendarFormat: CalendarFormat.week,
    headerVisible: false,
    focusedDay: DateTime.now(),
    firstDay: DateTime.utc(DateTime.monthsPerYear,),
    lastDay: DateTime.utc(2900, 8, 31),
  );
}


