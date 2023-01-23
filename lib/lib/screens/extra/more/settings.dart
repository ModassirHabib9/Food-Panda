import 'package:flutter/material.dart';

import '../../../utils/default_color.dart';

class SettingsScreen extends StatefulWidget {
  SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  String? value;

  bool? valuesecond = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        backwardsCompatibility: true,
        automaticallyImplyLeading: true,
        elevation: 1,
        foregroundColor: DefaultColor.primaryswatch,
      ),
      body: Column(
        children: [
          Card(
            margin: EdgeInsets.all(12),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Language"),
                      TextButton(
                        child: Text("Edit"),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Text(
                    "English",
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
            ),
          ),

          /// check boxes
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Checkbox(
                      value: valuesecond,
                      onChanged: (value) {
                        setState(() {
                          valuesecond = value;
                        });
                      }),
                  Text("Receive push notification")
                ],
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Checkbox(
                      value: valuesecond,
                      onChanged: (value) {
                        setState(() {
                          valuesecond = value;
                        });
                      }),
                  Text("Receive offers by email")
                ],
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Checkbox(
                      value: valuesecond,
                      onChanged: (value) {
                        setState(() {
                          valuesecond = value;
                        });
                      }),
                  Text("show floating icon")
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 30),
            alignment: Alignment.center,
            child: Text("Version: 22.25.0 (2222)"),
          )
        ],
      ),
    );
  }
}
