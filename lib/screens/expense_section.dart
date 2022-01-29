import 'package:flutter/material.dart';
import 'package:bankapp/constants.dart';
import 'package:bankapp/screens/data.dart';
import 'pie_chart.dart';

class ExpenseSection extends StatelessWidget {
  const ExpenseSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Text('Expenses',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
        ),
        Row(
          children: [
            Expanded( flex: 5,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: expenses.map((value) => Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Row(
                          children: [
                            CircleAvatar(radius: 5, backgroundColor: colors[expenses.indexOf(value)],),
                            SizedBox(width: 5,),
                            Text(value['name'].toString(),
                              style: TextStyle(fontSize: 16),
                            )
                          ],
                        ),
                    )).toList()

                  ),

            )),
            Expanded(
                flex: 6,
                child: PieChart())
          ],
        ),
      ],
    );
  }
}

