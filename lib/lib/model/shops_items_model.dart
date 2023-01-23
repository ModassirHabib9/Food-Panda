import 'package:flutter/material.dart';

class ShopsItems extends StatelessWidget {
  const ShopsItems({
    Key? key,
    this.img,
    this.title,
  }) : super(key: key);
  final String? img;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: const BoxDecoration(
            color: Colors.black12,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Image.network(
              img ?? "",
              //height: 30,
            ),
          ),
        ),
        Text(
          title ?? "",
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
