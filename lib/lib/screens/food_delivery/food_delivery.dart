import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/deals_controller.dart';
import '../../utils/default_color.dart';
import 'all_res_screen/res_screen.dart';

class FoodDelivery extends StatelessWidget {
  const FoodDelivery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final DealsController dealsController = Get.put(DealsController());
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.pink,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          "Food Delivery",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.card_travel,
              color: Colors.pink,
            ),
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            floating: true,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(16),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 12.0,
                  right: 12.0,
                  bottom: 12.0,
                ),
                child: CupertinoTextField(
                  obscureText: false,
                  placeholder: "Search for restaurants, cuisines, and dishes",
                  prefix: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.search),
                  ),
                  decoration: BoxDecoration(
                    color: DefaultColor.backgroundColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  suffix: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.display_settings,
                      color: Colors.pink,
                      size: 25,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  color: Colors.red[50],
                  height: 65,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          "New customers, user code HELLOPANDA to get\n50% off up to \$3. Just spend 6\$ or more",
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .copyWith(fontSize: 13, color: Colors.pink),
                        ),
                      ),
                      const Spacer(),
                      Image.asset(
                        "image/panda.png",
                        height: 100,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  height: 250,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: dealsController.deals.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: Row(
                            children: [
                              Image.asset(
                                '${dealsController.deals[index].img}',
                                height: 250,
                              ),
                            ],
                          ),
                        );
                      }),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "Cuisines",
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  color: Colors.white,
                  height: 150,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: dealsController.cuisines.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: Row(
                            children: [
                              Stack(
                                children: [
                                  Image.asset(
                                    '${dealsController.cuisines[index].imgc}',
                                    height: 150,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(
                                      left: 10,
                                      top: 10,
                                    ),
                                    width: 80,
                                    child: Text(
                                      dealsController.cuisines[index].title
                                          .toString(),
                                      style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 7,
                              ),
                              Stack(
                                children: [
                                  Image.asset(
                                    '${dealsController.cuisines2[index].imgc}',
                                    height: 150,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(
                                      left: 10,
                                      top: 10,
                                    ),
                                    width: 70,
                                    child: Text(
                                      dealsController.cuisines2[index].title
                                          .toString(),
                                      style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      }),
                ),
                const Text(
                  "All restaurants",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RestaurantScreen()));
                  },
                  child: SizedBox(
                    height: 350,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: dealsController.listPizza.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Image.network(
                              '${dealsController.listPizza[index].image}',
                              height: 200,
                            ),
                            const Text(
                              "New",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              "${dealsController.listPizza[index].name}",
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            const Spacer(),
                            const Icon(
                              Icons.star,
                              color: Colors.pink,
                            ),
                            const Text("2.0 (1)"),
                            Row(
                              children: [
                                Text(
                                  "${dealsController.listPizza[index].price} \$-",
                                  style: const TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Text("Asian"),
                              ],
                            ),
                            const Icon(
                              Icons.directions_bike,
                              color: Colors.pink,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              "Free delivery",
                              style: TextStyle(
                                  color: Colors.pink,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: const DecorationImage(
                                    image: NetworkImage(
                                        "https://play-lh.googleusercontent.com/Czq2cpxiA4yTdFIwV42ItMMYnhsJlJAsgmA00jWfiZx7GyneR0O6znY3kzQXMiTTDoJB"))),
                            // child: Image.network(
                            //   "https://play-lh.googleusercontent.com/Czq2cpxiA4yTdFIwV42ItMMYnhsJlJAsgmA00jWfiZx7GyneR0O6znY3kzQXMiTTDoJB",
                            // ),
                          ),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.pink,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(2.0),
                                  child: Text(
                                    "New",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              const Text(
                                "Just Eat Express TK",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const Spacer(),
                              const Icon(
                                Icons.star,
                                color: Colors.pink,
                              ),
                              const Text("2.0 (1)"),
                            ],
                          ),
                          Row(
                            children: const [
                              Text("\$\$\$ - "),
                              Text("Asian"),
                            ],
                          ),
                          Row(
                            children: const [
                              Icon(
                                Icons.directions_bike,
                                color: Colors.pink,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Free delivery",
                                style: TextStyle(
                                    color: Colors.pink,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 90,
                              height: 25,
                              decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Center(
                                child: Text(
                                  "Featured",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 110,
                              height: 25,
                              decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Center(
                                child: Text(
                                  "30% Discount",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 70,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 50,
                              height: 25,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Center(
                                  child: Text(
                                "15 min",
                                style: TextStyle(color: Colors.black),
                              )),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Shop by store",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Obx(
                  () => SizedBox(
                    height: 2050,
                    child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: dealsController.listPizza.length,
                        itemBuilder: (context, index) {
                          return Card(
                            child: Row(
                              children: [
                                Stack(
                                  children: [
                                    Image.network(
                                      '${dealsController.listPizza[index].image}',
                                      height: 100,
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      height: 25,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        color: Colors.pink,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Text(
                                        '${dealsController.listPizza[index].id}',
                                        style: const TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      '${dealsController.listPizza[index].name}',
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
                                    ),
                                    Text(
                                      '${dealsController.listPizza[index].price} \$',
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10,
                                        color: Colors.pink,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          );
                        }),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
