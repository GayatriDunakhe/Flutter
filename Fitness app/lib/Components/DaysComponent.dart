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

CalenderComponent(){
  return Container(
    padding: EdgeInsets.all(20),
    child: Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.5),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        children: [
          TableCalendar(
            calendarStyle: CalendarStyle(
              defaultTextStyle: cstmTextStyle(fs:18,fc: Colors.black54),
              weekendTextStyle: cstmTextStyle(fs:18,fc: Colors.black54),
              todayTextStyle: cstmTextStyle(fs:18,fc: Colors.white,),
              todayDecoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xffFE0098),
                    Color(0xffFF8A00),
                  ],
                ),
                shape: BoxShape.circle,),
            ),
            headerVisible: false,
            focusedDay: DateTime.now(),
            firstDay: DateTime.utc(DateTime.monthsPerYear,),
            lastDay: DateTime.utc(2900, 8, 31),
          ),
        ],
      ),
    ),
  );
}

