import 'package:flutter/material.dart';
import 'package:bankapp/constants.dart';

class CardDetails extends StatelessWidget {
  const CardDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Container(
            width: 150,
            child: Image.asset(
              'assets/images/vis.png',
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 50,
              width: 70,
              decoration: BoxDecoration(
                color: kPrimaryColor,
                boxShadow: customShadow,
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 30.0,
              left: 10
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Text('**** **** ****',
                        style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    Text(
                      ' 8716',
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ],

                ),
                Text('GOLD CARD', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)
              ],
            ),
          ),
        )
      ],
    );
  }
}
