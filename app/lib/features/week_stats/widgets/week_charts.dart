import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:jhanas/api/graphql/journal_record.graphql.dart';
import 'package:jhanas/helpers/color.dart';

bool sameDay(DateTime a, DateTime b) {
  return a.year == b.year && a.month == b.month && a.day == b.day;
}

class DateRecords {
  final DateTime date;
  final bool isToday;
  List<Fragment$JournalRecord> records;

  DateRecords(this.date, this.records, {this.isToday = false});
}

class WeekCharts extends StatelessWidget {
  final List<Fragment$JournalRecord> records;
  final bool animateLast;

  const WeekCharts(
      {super.key, required this.records, this.animateLast = false});

  @override
  Widget build(BuildContext context) {
    final DateTime now = DateTime.now();

    final List<DateRecords> dateMeditations = [];

    for (var days = 6; days >= 0; days--) {
      DateTime date = now.subtract(Duration(days: days));
      date = DateTime(date.year, date.month, date.day);
      dateMeditations.add(DateRecords(
        date,
        records
            .where((m) => sameDay(DateTime.parse(m.datetime).toLocal(), date))
            .toList(),
        isToday: days == 0,
      ));
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: dateMeditations.map((m) => _buildDay(m)).toList(),
    );
  }

  Widget _buildDay(DateRecords dateMeditations) {
    return SizedBox(
      height: 45,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            DateFormat('EEE').format(dateMeditations.date),
            style: TextStyle(
              color: dateMeditations.isToday
                  ? Colors.white
                  : const Color.fromARGB(255, 146, 143, 149),
              fontSize: 11,
              height: 16 / 11,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 3),
          SizedBox(
            height: 26,
            width: 26,
            child: Center(
              child: animateLast && dateMeditations.isToday
                  ? TweenAnimationBuilder(
                      duration: const Duration(seconds: 1),
                      tween: Tween(begin: 0.0, end: 1.0),
                      curve: Curves.easeOutCubic,
                      builder: (context, value, child) => CustomPaint(
                            painter: OpenPainter(
                              records: dateMeditations.records,
                              range: value,
                            ),
                          ))
                  : CustomPaint(
                      painter: OpenPainter(
                        records: dateMeditations.records,
                        range: 1,
                      ),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}

// See https://stackoverflow.com/questions/66994068/flutter-draw-a-circle-border-with-3-multiple-colors-and-values
class OpenPainter extends CustomPainter {
  final List<Fragment$JournalRecord> records;
  final double range;

  final double _strokeWidth = 6;
  late final Paint noDataPaint;
  Rect _rect = const Offset(-10, -10) & const Size(20, 20);

  OpenPainter({required this.records, required this.range}) {
    noDataPaint = Paint()
      ..color = const Color(0xff1C1B1F)
      ..strokeWidth = _strokeWidth
      ..style = PaintingStyle.stroke;
  }

  @override
  void paint(Canvas canvas, Size size) {
    if (records.isEmpty) {
      canvas.drawArc(_rect, 0, 2 * math.pi, false, noDataPaint);
      return;
    }

    final int total = records.map((m) => m.duration).reduce((a, b) => a + b);

    double divider = 0;
    if (records.length > 1) {
      final double minValue =
          records.map((m) => m.duration).reduce(math.min) / total;

      divider = 360 * minValue / 2; // space between arcs, in degrees
      if (divider > 10) {
        divider = 10;
      }
    }

    final double radianDivider = _toRadians(divider / 360);
    double radianStart = 0;
    for (final r in records) {
      final double radianEnd = _toRadians(r.duration / total);
      final Color color = r.unitColor == null
          ? timerColor
          : Color(0xff000000 | int.parse(r.unitColor!, radix: 16));
      canvas.drawArc(
          _rect,
          range * (radianStart + radianDivider / 2),
          range * (radianEnd - radianDivider / 2),
          false,
          Paint()
            ..color = color
            ..strokeWidth = _strokeWidth
            ..style = PaintingStyle.stroke);
      radianStart += radianEnd;
    }
  }

  double _toRadians(double value) {
    return (360 * value) * math.pi / 180;
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
