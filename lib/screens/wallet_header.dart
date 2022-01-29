import 'package:flutter/material.dart';
import 'package:bankapp/constants.dart';
class WalletHeader extends StatelessWidget {
  const WalletHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Mike\'s Wallet', style: TextStyle(fontSize: 25,
              fontWeight: FontWeight.bold
            ),
            ),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: kPrimaryColor,
                boxShadow: customShadow

              ),
              child: Stack(
                children: [
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.deepOrange,
                        shape: BoxShape.circle,
                        
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        shape: BoxShape.circle,

                      ),
                    ),
                  ),
                  Center(
                    child: Icon(Icons.notifications)
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
