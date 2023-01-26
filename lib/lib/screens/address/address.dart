import 'package:flutter/material.dart';
import 'package:foodpanda_clone/lib/utils/default_color.dart';

import '../../widget/my_button.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: MyCustomButton(onPressedbtn: () {}, text: "Add New Address"),
      appBar: AppBar(
        title: const Text('Addresses'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Column(
          children: [
            Card(
              child: Container(
                // height: 80,
                child: ListTile(
                  minLeadingWidth: 22,
                  minVerticalPadding: 20,
                  leading:
                      Icon(Icons.place_outlined, color: DefaultColor.primary),
                  title: Text(
                    "Comsats institue of information",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                  trailing: Container(
                    width: 60,
                    child: Row(
                      children: [
                        Icon(
                          Icons.edit_outlined,
                          color: DefaultColor.primary,
                        ),
                        SizedBox(width: 5),
                        Icon(
                          Icons.delete_outlined,
                          color: DefaultColor.primary,
                        )
                      ],
                    ),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Islamabad"),
                      Text("Note to rider: none"),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              child: Container(
                // height: 80,
                child: ListTile(
                  minLeadingWidth: 22,
                  minVerticalPadding: 20,
                  leading:
                      Icon(Icons.place_outlined, color: DefaultColor.primary),
                  title: Text(
                    "506 12",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                  trailing: Container(
                    width: 60,
                    child: Row(
                      children: [
                        Icon(
                          Icons.edit_outlined,
                          color: DefaultColor.primary,
                        ),
                        SizedBox(width: 5),
                        Icon(
                          Icons.delete_outlined,
                          color: DefaultColor.primary,
                        )
                      ],
                    ),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Rawalpindi"),
                      Text("Note to rider: none"),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              child: Container(
                // height: 80,
                child: ListTile(
                  minLeadingWidth: 22,
                  minVerticalPadding: 20,
                  leading:
                      Icon(Icons.place_outlined, color: DefaultColor.primary),
                  title: Text(
                    "Kucheri Road Airport Rd",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                  trailing: Container(
                    width: 60,
                    child: Row(
                      children: [
                        Icon(
                          Icons.edit_outlined,
                          color: DefaultColor.primary,
                        ),
                        SizedBox(width: 5),
                        Icon(
                          Icons.delete_outlined,
                          color: DefaultColor.primary,
                        )
                      ],
                    ),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Islamabad"),
                      Text("Note to rider: none"),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
