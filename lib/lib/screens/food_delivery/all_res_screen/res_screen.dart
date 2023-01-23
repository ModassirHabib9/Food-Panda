import 'package:flutter/material.dart';

class RestaurantScreen extends StatelessWidget {
  const RestaurantScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Hello"),
      // ),
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(24),
        child: Row(
          children: [
            InkWell(
              onTap: () {},
              child: const Icon(
                Icons.arrow_back_ios,
                size: 30,
                color: Colors.black,
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.person_add_alt),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.ios_share_outlined),
            ),
          ],
        ),
      ),
    );
  }
}
