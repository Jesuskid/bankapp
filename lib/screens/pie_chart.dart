import 'package:bankapp/screens/data.dart';
import 'package:flutter/material.dart';
import 'package:bankapp/constants.dart';
import 'dart:math';
class PieChart extends StatelessWidget {
  const PieChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          boxShadow: customShadow,
          shape: BoxShape.circle,
          color: kPrimaryColor,

        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: CustomPaint(
                child: Container(),
                foregroundPainter: PiePainter(),),
            ),
            Center(
              child: Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  boxShadow: customShadow,
                  shape: BoxShape.circle,
                  color: kPrimaryColor,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PiePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Offset center = Offset(size.width/2, size.height/2);
    double radius = min(size.width/2, size.height/2);

    var paint = Paint()..style=PaintingStyle.stroke..strokeWidth = 50;
    double total = 0;

    for(int i=0; i<expenses.length; i++){
      total += expenses[i]['amount'];
    }




    var startRadius = -pi/2;
    for(int i=0; i<expenses.length; i++){
      var currentExpense = expenses[i]['amount'];
      var sweepRadian = (currentExpense/total)*2*pi;
      paint.color = colors[i];
      canvas.drawArc(Rect.fromCircle(center: center, radius: radius), startRadius, sweepRadian, false, paint);
      startRadius += sweepRadian;
    }


    // TODO: implement paint
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }


}

