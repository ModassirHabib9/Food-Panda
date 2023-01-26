import 'package:flutter/material.dart';
import 'package:scrollable_list_tabview/model/list_tab.dart';
import 'package:scrollable_list_tabview/model/scrollable_list_tab.dart';
import 'package:scrollable_list_tabview/scrollable_list_tabview.dart';

import '../../utils/default_color.dart';

class DetailScreen extends StatefulWidget {
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen>
    with SingleTickerProviderStateMixin {
  late TabController controller;
  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              pinned: true,
              floating: false,
              snap: false,
              backgroundColor: Colors.white,
              automaticallyImplyLeading: false,
              leading: Container(
                  height: 20,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: DefaultColor.backgroundColor),
                  child: IconButton(
                      onPressed: () {},
                      icon:
                          Icon(Icons.arrow_back, color: DefaultColor.primary))),
              actions: [
                Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: DefaultColor.backgroundColor),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.share, color: DefaultColor.primary)))
              ],
              flexibleSpace: FlexibleSpaceBar(
                // title: Text(
                //   "Savour Food-College Road",
                //   textAlign: TextAlign.start,
                //   style: TextStyle(color: Colors.black, fontSize: 12),
                // ),
                collapseMode: CollapseMode.parallax,
                stretchModes: const [StretchMode.blurBackground],
                background: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 170.0,
                      width: double.infinity,
                      color: Colors.grey,
                      child: Image(
                          fit: BoxFit.cover,
                          image: AssetImage('image/cuisines/cs1.png')),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Savour Food-College Road",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "3Km away | Rs. 199.00 Minimum",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Icon(Icons.star,
                                  color: DefaultColor.primary, size: 14),
                              Icon(Icons.star,
                                  color: DefaultColor.primary, size: 14),
                              Icon(Icons.star,
                                  color: DefaultColor.primary, size: 14),
                              Icon(Icons.star,
                                  color: DefaultColor.primary, size: 14),
                              Icon(Icons.star,
                                  color: DefaultColor.primary, size: 14),
                              SizedBox(width: 10),
                              Text("25000+ ratings"),
                              Spacer(),
                              Container(
                                  alignment: AlignmentDirectional.centerEnd,
                                  child: Text(
                                    "reward & info",
                                    textAlign: TextAlign.end,
                                    style:
                                        TextStyle(color: DefaultColor.primary),
                                  )),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              expandedHeight: 220.0,
            ),
          ];
        },
        body: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
              child: Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Rs. 15 off",
                        style: TextStyle(color: DefaultColor.primary),
                      ),
                      Text("minimum order of Rs. 15"),
                    ],
                  )),
            ),
            Expanded(
              child: ScrollableListTabView(
                tabHeight: 50,
                bodyAnimationDuration: const Duration(milliseconds: 800),
                tabAnimationCurve: Curves.easeOut,
                tabAnimationDuration: const Duration(milliseconds: 150),
                tabs: [
                  ScrollableListTab(
                    tab: const ListTab(
                      label: Text('Popular'),
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      activeBackgroundColor: MyColors.navy,
                      borderColor: MyColors.navy,
                      inactiveBackgroundColor: Colors.white,
                    ),
                    body: GridView.builder(
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 12,
                              mainAxisSpacing: 12),
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 6,
                      itemBuilder: (_, index) => Card(
                        child: Stack(
                          fit: StackFit.passthrough,
                          children: [
                            const Image(
                              fit: BoxFit.fitHeight,
                              image: AssetImage('image/cuisines/cs2.png'),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'Palao Kabab',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 10,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xfffffcff),
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 5),
                                    child: Text(
                                      'Rs. 180.00',
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  ScrollableListTab(
                    tab: const ListTab(
                        label: Text(
                          'Favourite',
                          style: TextStyle(),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        activeBackgroundColor: MyColors.navy,
                        borderColor: MyColors.navy),
                    body: ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 10,
                      itemBuilder: (_, index) => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            title: const Text(
                              'Chicken Tike Pizz',
                              style: TextStyle(),
                            ),
                            subtitle:
                                const Text("Onion, capsicum, tomat & olive"),
                            trailing: Container(
                              height: 80,
                              width: 80,
                              alignment: Alignment.center,
                              child: const Image(
                                image: AssetImage('image/cuisines/cs4.png'),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: Text("RS. 120.00"),
                              ),
                              Container(
                                width: 90,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: const Color(0xffeab676)
                                        .withOpacity(0.5)),
                                child: const Center(
                                  child: Text(
                                    '🔥 Popular',
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          const Divider()
                        ],
                      ),
                    ),
                  ),

                  ///
                  ScrollableListTab(
                    tab: const ListTab(
                      label: Text('Checked pulao'),
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      activeBackgroundColor: MyColors.navy,
                      borderColor: MyColors.navy,
                      inactiveBackgroundColor: Colors.white,
                    ),
                    body: GridView.builder(
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 12,
                              mainAxisSpacing: 12),
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 6,
                      itemBuilder: (_, index) => Card(
                        child: Stack(
                          fit: StackFit.passthrough,
                          children: [
                            const Image(
                              fit: BoxFit.fitHeight,
                              image: AssetImage('image/cuisines/cs2.png'),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'Palao Kabab',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 10,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xfffffcff),
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 5),
                                    child: Text(
                                      'Rs. 180.00',
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  ScrollableListTab(
                    tab: const ListTab(
                      label: Text('Exclusive deals'),
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      activeBackgroundColor: MyColors.navy,
                      borderColor: MyColors.navy,
                      inactiveBackgroundColor: Colors.white,
                    ),
                    body: GridView.builder(
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 12,
                              mainAxisSpacing: 12),
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 6,
                      itemBuilder: (_, index) => Card(
                        child: Stack(
                          fit: StackFit.passthrough,
                          children: [
                            const Image(
                              fit: BoxFit.fitHeight,
                              image: AssetImage('image/cuisines/cs2.png'),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'Palao Kabab',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 10,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xfffffcff),
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 5),
                                    child: Text(
                                      'Rs. 180.00',
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  ScrollableListTab(
                    tab: const ListTab(
                      label: Text('Popular'),
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      activeBackgroundColor: MyColors.navy,
                      borderColor: MyColors.navy,
                      inactiveBackgroundColor: Colors.white,
                    ),
                    body: GridView.builder(
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 12,
                              mainAxisSpacing: 12),
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 6,
                      itemBuilder: (_, index) => Card(
                        child: Stack(
                          fit: StackFit.passthrough,
                          children: [
                            const Image(
                              fit: BoxFit.fitHeight,
                              image: AssetImage('image/cuisines/cs2.png'),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'Palao Kabab',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 10,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xfffffcff),
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 5),
                                    child: Text(
                                      'Rs. 180.00',
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  ScrollableListTab(
                    tab: const ListTab(
                      label: Text('Popular'),
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      activeBackgroundColor: MyColors.navy,
                      borderColor: MyColors.navy,
                      inactiveBackgroundColor: Colors.white,
                    ),
                    body: GridView.builder(
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 12,
                              mainAxisSpacing: 12),
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 6,
                      itemBuilder: (_, index) => Card(
                        child: Stack(
                          fit: StackFit.passthrough,
                          children: [
                            const Image(
                              fit: BoxFit.fitHeight,
                              image: AssetImage('image/cuisines/cs2.png'),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'Palao Kabab',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 10,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xfffffcff),
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 5),
                                    child: Text(
                                      'Rs. 180.00',
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
