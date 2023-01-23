import 'package:flutter/material.dart';

import '../../../utils/default_color.dart';

class TermsAndConditionMore extends StatelessWidget {
  const TermsAndConditionMore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("More"),
        backwardsCompatibility: true,
        automaticallyImplyLeading: true,
        elevation: 1,
        foregroundColor: DefaultColor.primaryswatch,
      ),
      body: Column(
        children: [
          ListTile(
            leading: null,
            title: Text("Terms & Conditions"),
          ),
          ListTile(leading: null, title: Text("Data Policy"))
        ],
      ),
    );
  }
}
