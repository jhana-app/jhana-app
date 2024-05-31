import 'dart:math';
import 'package:flutter/material.dart';
import 'package:path_drawing/path_drawing.dart';

const debugPoint = -1;

class Line {
  late final double m;
  late final double b;

  Line(this.m, this.b);

  Line.fromPoints(Point<double> p1, Point<double> p2) {
    if (p1.x == p2.x) {
      m = 1e8;
    } else {
      m = (p1.y - p2.y) / (p1.x - p2.x);
    }
    b = p1.y - m * p1.x;
  }

  @override
  String toString() => 'Line($m, $b)';

  Line parallel(Point<double> p) {
    return Line(m, p.y - m * p.x);
  }

  Point<double> intersect(Line l) {
    return Point(
      (b - l.b) / (l.m - m),
      (l.m * b - m * l.b) / (l.m - m),
    );
  }
}

class PathCurve extends CustomPainter {
  final List<Point<double>> points;

  static double dashWidth = 10.0;
  static double dashSpace = 5.0;
  static double distance = 0.0;

  const PathCurve({
    required this.points,
  });

  @override
  void paint(Canvas canvas, Size size) {
    if (points.length <= 2) {
      return;
    }

    final paint = Paint()
      ..color = const Color(0xff625b71)
      ..strokeWidth = 3.0
      ..style = PaintingStyle.stroke
      ..strokeJoin = StrokeJoin.round;

    final path = Path();
    path.moveTo(points[1].x, points[1].y);

    // double x, x1, x2, x3, x4, y, y1, y2, y3, y4;
    // for (var i = 2; i < points.length - 1; i++) {
    //   x1 = points[i - 2].x;
    //   y1 = points[i - 2].y;
    //   x2 = points[i - 1].x;
    //   y2 = points[i - 1].y;
    //   x3 = points[i].x;
    //   y3 = points[i].y;
    //   x4 = points[i + 1].x;
    //   y4 = points[i + 1].y;

    //   x = ((x1 * y2 - y1 * x2) * (x3 - x4) - (x1 - x2) * (x3 * y4 - y3 * x4)) /
    //       ((x1 - x2) * (y3 - y4) - (y1 - y2) * (x3 - x4));
    //   y = ((x1 * y2 - y1 * x2) * (y3 - y4) - (y1 - y2) * (x3 * y4 - y3 * x4)) /
    //       ((x1 - x2) * (y3 - y4) - (y1 - y2) * (x3 - x4));

    //   // path.quadraticBezierTo(x, y, points[i].x, points[i].y);

    //   path.cubicTo(
    //       points[i - 1].x, points[i - 1].y, x, y, points[i].x, points[i].y);

    //   // path.lineTo(points[i].x, points[i].y);
    // }

    Line l1, l2, l3, l4;
    Point<double> p;
    for (var i = 2; i < points.length - 1; i++) {
      l1 = Line.fromPoints(points[i - 2], points[i]);
      l2 = Line.fromPoints(points[i - 1], points[i + 1]);

      l3 = l1.parallel(points[i - 1]);
      l4 = l2.parallel(points[i]);

      p = l4.intersect(l3);

      if (i == debugPoint) {
        canvas.drawLine(Offset(0, l1.b), Offset(999, l1.m * 999 + l1.b),
            Paint()..color = Colors.green);
        canvas.drawLine(Offset(0, l2.b), Offset(999, l2.m * 999 + l2.b),
            Paint()..color = Colors.green);
        canvas.drawLine(Offset(0, l3.b), Offset(999, l3.m * 999 + l3.b),
            Paint()..color = Colors.blue);
        canvas.drawLine(Offset(0, l4.b), Offset(999, l4.m * 999 + l4.b),
            Paint()..color = Colors.blue);
        canvas.drawCircle(Offset(p.x, p.y), 7, Paint()..color = Colors.blue);
      }

      path.quadraticBezierTo(
        p.x,
        p.y,
        points[i].x,
        points[i].y,
      );
    }

    canvas.drawPath(
      dashPath(path, dashArray: CircularIntervalList([10, 5])),
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
