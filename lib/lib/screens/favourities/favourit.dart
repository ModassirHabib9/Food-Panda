import 'package:flutter/material.dart';
import 'package:foodpanda_clone/lib/screens/favourities/tabs/delivery.dart';

import '../../utils/default_color.dart';

class FavouritiesScreen extends StatelessWidget {
  const FavouritiesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.red,
      theme: ThemeData(
          appBarTheme: AppBarTheme(
              backgroundColor: Colors.white,
              toolbarTextStyle: TextStyle(color: DefaultColor.colorBlack),
              actionsIconTheme: IconThemeData(color: DefaultColor.primary),
              foregroundColor: DefaultColor.primary)),
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Settings'),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.card_giftcard))
            ],
            bottom: TabBar(
              indicatorPadding: EdgeInsets.symmetric(horizontal: 12),
              automaticIndicatorColorAdjustment: true,
              indicatorColor: DefaultColor.primary,
              labelStyle: TextStyle(color: DefaultColor.primary),
              unselectedLabelColor: DefaultColor.colorBlack,
              indicatorWeight: 8,
              unselectedLabelStyle: TextStyle(
                color: DefaultColor.colorBlack,
              ),
              tabs: [Tab(text: "Restourent"), Tab(text: "Shops")],
            ),
          ),
          body: TabBarView(
            children: [
              Deliveryscreen(),
              Text("data"),
            ],
          ),
        ),
      ),
    ); /*DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Settings",
            style: TextStyle(color: DefaultColor.colorBlack),
          ),
          backwardsCompatibility: false,
          automaticallyImplyLeading: false,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back_outlined),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.card_giftcard))
          ],
          elevation: 1,
          foregroundColor: DefaultColor.primary,
          backgroundColor: Colors.white,
          bottom: const TabBar(
            indicatorPadding: EdgeInsets.symmetric(horizontal: 12),
            automaticIndicatorColorAdjustment: true,
            indicatorColor: DefaultColor.primary,
            labelStyle: TextStyle(color: DefaultColor.primary),
            unselectedLabelColor: DefaultColor.colorBlack,
            unselectedLabelStyle: TextStyle(
              color: DefaultColor.colorBlack,
            ),
            tabs: [
              Text("Restorent"),
              Text("Shops"),
            ],
          ),
        ),
        body: Column(
          children: [],
        ),
      ),
    );*/
  }
}
