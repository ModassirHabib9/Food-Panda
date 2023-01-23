import 'package:flutter/material.dart';

class FoodCustom extends StatelessWidget {
  const FoodCustom({
    Key? key,
    this.text,
    this.subtext,
  }) : super(key: key);

  final String? text;
  final String? subtext;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text ?? "Food delivery",
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                fontWeight: FontWeight.w800,
                fontSize: 18,
              ),
        ),
        Text(
          subtext ?? "",
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: Colors.black54,
                fontSize: 12,
              ),
        ),
      ],
    );
  }
}
