import 'package:flutter/material.dart';
import 'package:foodpanda_clone/lib/screens/food_delivery/all_res_screen/res_screen.dart';

class ItemBuild extends StatelessWidget {
  const ItemBuild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: const [
          RestaurantScreen(),
          Padding(padding: EdgeInsets.all(16.0), child: Text("Hello")),
        ],
      ),
    );
  }
}
