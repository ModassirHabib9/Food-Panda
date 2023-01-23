import 'package:flutter/material.dart';

import '../../../utils/default_color.dart';

class Deliveryscreen extends StatelessWidget {
  const Deliveryscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: DefaultColor.primary,
                      borderRadius: BorderRadius.circular(30)),
                  height: 40,
                  width: 90,
                  alignment: Alignment.center,
                  child: Text(
                    "Delivery",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.brown)),
                  height: 40,
                  width: 90,
                  alignment: Alignment.center,
                  child: Text(
                    "Pick-Up",
                    style: TextStyle(color: DefaultColor.colorBlack),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
