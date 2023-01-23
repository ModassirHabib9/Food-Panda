import 'package:flutter/material.dart';

import '../../utils/default_color.dart';
import '../extra/more/settings.dart';
import '../extra/more/terms_condition.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width * 0.80,
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(""),
            accountEmail: Text("Syed Naseeb Ali Tirmizi"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              maxRadius: 12,
              minRadius: 9,
              child: Text(
                "S",
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ),
          ListTile(
            title: Row(
              children: [
                Text(
                  "panda",
                  style: TextStyle(color: DefaultColor.primary),
                ),
                Container(
                  color: DefaultColor.primary,
                  child: Text(
                    "Pay",
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: DefaultColor.backgroundColor),
                  ),
                ),
              ],
            ),
            trailing: Text(
              "Rs. 0.00",
              style: TextStyle(color: DefaultColor.primary),
            ),
            subtitle: Text("Credit and payment methods"),
          ),
          ListDrawerItem(
            icon: Container(
              color: DefaultColor.primary,
              child: Text(
                " Pro ",
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: DefaultColor.backgroundColor),
              ),
            ),
            title: "Become a pandapro",
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListDrawerItem(
            icon: Icon(Icons.favorite_border, color: DefaultColor.primary),
            title: "Favourites",
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListDrawerItem(
            icon:
                Icon(Icons.text_snippet_outlined, color: DefaultColor.primary),
            title: "Order & reordering",
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListDrawerItem(
            icon: Icon(Icons.person, color: DefaultColor.primary),
            title: "Profile",
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListDrawerItem(
            icon: Icon(Icons.map, color: DefaultColor.primary),
            title: "Address",
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListDrawerItem(
            icon: Icon(Icons.wine_bar_rounded, color: DefaultColor.primary),
            title: "panda rewards",
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListDrawerItem(
            icon: Icon(Icons.volume_off_outlined, color: DefaultColor.primary),
            title: "Vouchers",
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListDrawerItem(
            icon: Icon(Icons.help_outline, color: DefaultColor.primary),
            title: "Help center",
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListDrawerItem(
            icon: Icon(Icons.business, color: DefaultColor.primary),
            title: "Foodpanda for business",
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Divider(),
          ListTile(
            leading: null,
            title: Text("Settings"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SettingsScreen()));
            },
          ),
          ListTile(
            leading: null,
            title: Text("Terms & conditions / Privacy"),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => TermsAndConditionMore()));
            },
          ),
          ListTile(
            leading: null,
            title: Text("Logout"),
          ),
        ],
      ),
    );
  }
}

class ListDrawerItem extends StatelessWidget {
  ListDrawerItem({Key? key, this.title, this.icon, this.onTap})
      : super(key: key);

  final String? title;
  final Widget? icon;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title: Text(title!),
      onTap: onTap,
    );
  }
}
