import 'package:flutter/material.dart';
import 'package:bankapp/constants.dart';
import 'card_details.dart';

class CardSection extends StatelessWidget {
  const CardSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          alignment: Alignment.topLeft,
          child: Text('Selected card',
            style: TextStyle(fontWeight: FontWeight.bold,
              fontSize: 20
            ),),
        ),
        Expanded(
          child:
          ListView.builder(
            scrollDirection: Axis.horizontal,
              itemCount: 2,
              itemBuilder: (context, i){
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              decoration: BoxDecoration(
                color: kPrimaryColor,
                boxShadow: customShadow,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Stack(
                children: [
                  Positioned.fill(
                      top: 150,
                      bottom: -200,
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white38,
                            boxShadow: customShadow

                        ),
                      )
                  ),
                  Positioned.fill(
                    left: -300,
                    top: -100,
                    bottom: -100,
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white24,
                          boxShadow: customShadow

                        ),
                      )
                  ),
                  CardDetails(),

                ],
              ),
            );
          })
          ),
      ],
    );
  }
}
