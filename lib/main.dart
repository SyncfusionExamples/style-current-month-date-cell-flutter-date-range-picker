import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

void main() => runApp(const CurrentMonthCellCustomization());

class CurrentMonthCellCustomization extends StatelessWidget {
  const CurrentMonthCellCustomization({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Card(
            margin: const EdgeInsets.fromLTRB(50, 150, 50, 150),
            child: SfDateRangePicker(
              view: DateRangePickerView.month,
              monthViewSettings: const DateRangePickerMonthViewSettings(
                showTrailingAndLeadingDates: true,
              ),
              monthCellStyle: const DateRangePickerMonthCellStyle(
                todayTextStyle: TextStyle(color: Colors.cyanAccent),
                cellDecoration: BoxDecoration(color: Colors.teal),
              ),
            ),
          ),
        ),
      ),
    );
  }
}