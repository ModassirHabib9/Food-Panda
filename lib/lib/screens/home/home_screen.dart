import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/deals_controller.dart';
import '../../model/food_custom.dart';
import '../../utils/default_color.dart';
import '../favourities/favourit.dart';
import 'drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final DealsController dealsController = Get.put(
      DealsController(),
    );
    return Scaffold(
      backgroundColor: DefaultColor.backgroundColor,
      appBar: AppBar(
        centerTitle: false,
        // leading: Row(
        //   children: [
        //     IconButton(
        //       icon: const Icon(
        //         Icons.list,
        //       ),
        //       onPressed: () {
        //         // Scaffold.of(context).openDrawer();
        //       },
        //     ),
        //   ],
        // ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Kutcheri Road Airport Rd",
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            Text(
              "Rawalpindi",
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FavouritiesScreen(),
                ),
              );
            },
            icon: const Icon(Icons.favorite_border),
          ),
          IconButton(
            onPressed: () {
              /*  Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CardScreen(),
                ),
              );*/
            },
            icon: const Icon(Icons.card_travel),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 12.0,
              right: 12.0,
              bottom: 12.0,
            ),
            child: CupertinoTextField(
              obscureText: false,
              placeholder: "Search for shops & restaurants",
              prefix: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.search),
              ),
              decoration: BoxDecoration(
                color: DefaultColor.backgroundColor,
                borderRadius: BorderRadius.circular(25),
              ),
            ),
          ),
        ),
      ),
      drawer: HomeDrawer(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  /*GestureDetector(
                    onTap: (() => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const FoodDelivery(),
                          ),
                        )),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 160,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                FoodCustom(
                                  text: "Food delivery",
                                  subtext: "Order food you love",
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          Expanded(
                            flex: 3,
                            child: Container(
                              alignment: Alignment.bottomRight,
                              child: const Image(
                                height: 180,
                                image: AssetImage("image/food1.png"),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),*/
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          /*Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ShopsScreen(),
                            ),
                          );*/
                        },
                        child: Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.45,
                              height: 270,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const FoodCustom(
                                      text: "Food delivery",
                                      subtext:
                                          "order from your favourite restaurant and home chefe",
                                    ),
                                    Spacer(),
                                    Container(
                                      alignment: Alignment.bottomRight,
                                      child: const Image(
                                        height: 110,
                                        image: AssetImage("image/food1.png"),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            GestureDetector(
                              onTap: () {
                                /*Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const PickupScreen(),
                                ),
                              );*/
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.45,
                                height: 80,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const [
                                          FoodCustom(
                                            text: "Dine-in",
                                            subtext: "Up to 50% off",
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Spacer(),
                                    Expanded(
                                      flex: 3,
                                      child: Container(
                                        alignment: Alignment.bottomRight,
                                        child: const Image(
                                          height: 50,
                                          image: AssetImage("image/food4.png"),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.45,
                            height: 180,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      /*Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const PandamartScreen(),
                                        ),
                                      );*/
                                    },
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        FoodCustom(
                                          text: "pandamart",
                                          subtext:
                                              "Fast delivery, up to 40% off",
                                        ),
                                      ],
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    alignment: Alignment.bottomRight,
                                    child: const Image(
                                      height: 65,
                                      image: AssetImage("image/food2.png"),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              /*Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const PickupScreen(),
                                ),
                              );*/
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.45,
                              height: 80,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        FoodCustom(
                                          text: "Shops",
                                          subtext: "Up to 50% off",
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Spacer(),
                                  Expanded(
                                    flex: 3,
                                    child: Container(
                                      alignment: Alignment.bottomRight,
                                      child: const Image(
                                        height: 50,
                                        image: AssetImage("image/food4.png"),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              /*Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const PickupScreen(),
                                ),
                              );*/
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.45,
                              height: 80,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        FoodCustom(
                                          text: "Pick-up",
                                          subtext: "Up to 50% off",
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Spacer(),
                                  Expanded(
                                    flex: 3,
                                    child: Container(
                                      alignment: Alignment.bottomRight,
                                      child: const Image(
                                        height: 50,
                                        image: AssetImage("image/food4.png"),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(12.0),
              alignment: Alignment.centerLeft,
              child: Text(
                "Your daily deals",
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontWeight: FontWeight.w800,
                      fontSize: 18,
                    ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 160,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: dealsController.deals.length,
                  itemBuilder: (BuildContext context, index) {
                    return Card(
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //     builder: (context) => const DailyDeals(),
                              //   ),
                              // );
                            },
                            child: Image.asset(
                              '${dealsController.deals[index].img}',
                              height: 200,
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(1),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Cuisines",
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontWeight: FontWeight.w800,
                            fontSize: 18,
                          ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      flex: 2,
                      child: GestureDetector(
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => const CuisinesScreen(),
                          //   ),
                          // );
                        },
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: dealsController.cuisines.length,
                            itemBuilder: (context, index) {
                              return Card(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(
                                        '${dealsController.cuisines[index].imgc}',
                                        height: 80,
                                      ),
                                    ),
                                    Text(
                                      dealsController.cuisines[index].title
                                          .toString(),
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(
                                        '${dealsController.cuisines2[index].imgc}',
                                        height: 80,
                                      ),
                                    ),
                                    Text(
                                      dealsController.cuisines2[index].title
                                          .toString(),
                                      style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              );
                            }),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            /// botttom become a pro
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            FoodCustom(
                              text: "Become a pro",
                              subtext: "and get exclusive deals",
                            ),
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: const Image(
                          // height: 50,
                          image: AssetImage("image/food1.png"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            /// botttom try panda reward
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            FoodCustom(
                              text: "Try panda rewards!",
                              subtext: "Earn points and win pizes",
                            ),
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: const Image(
                          // height: 50,
                          image: AssetImage("image/food1.png"),
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
    );
  }
}
