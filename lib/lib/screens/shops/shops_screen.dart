import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/cuisines_controller.dart';
import '../../controller/deals_controller.dart';
import '../../utils/default_color.dart';

class ShopsScreen extends StatefulWidget {
  const ShopsScreen({Key? key}) : super(key: key);

  @override
  State<ShopsScreen> createState() => _ShopsScreenState();
}

class _ShopsScreenState extends State<ShopsScreen> {
  final DealsController dealsController = Get.put(DealsController());
  final SuciesController suciesController = Get.put(SuciesController());
  @override
  void initState() {
    dealsController.getListPizza();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
                Obx(
                  () => GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        crossAxisSpacing: 5.0,
                        mainAxisSpacing: 5.0,
                      ),
                      itemCount: dealsController.isMore.value
                          ? dealsController.items.length
                          : 4,
                      itemBuilder: (context, index) {
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
                                  '${dealsController.items[index].img}',
                                  height: 30,
                                ),
                              ),
                            ),
                            Text('${dealsController.items[index].title}'),
                          ],
                        );
                      }),
                ),
                Obx(
                  () => Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      dealsController.isMore.value
                          ? const Icon(
                              Icons.arrow_drop_up,
                              color: Colors.pink,
                            )
                          : const Icon(
                              Icons.arrow_drop_down,
                              color: Colors.pink,
                            ),
                      TextButton(
                        onPressed: () {
                          dealsController.isMore.value =
                              !dealsController.isMore.value;
                        },
                        child: dealsController.isMore.value
                            ? const Text("View less")
                            : const Text("View all shop types"),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 150,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: dealsController.deals.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: Row(
                            children: [
                              Image.asset(
                                '${dealsController.deals[index].img}',
                                height: 200,
                              ),
                            ],
                          ),
                        );
                      }),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Apple Gold Store",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Obx(
                  () => SizedBox(
                    height: 300,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: suciesController.listSucie.length,
                        itemBuilder: (context, index) {
                          return Center(
                            child: Card(
                              child: Stack(
                                children: [
                                  Column(
                                    children: [
                                      Image.network(
                                        '${suciesController.listSucie[index].img}',
                                        height: 250,
                                      ),
                                      const SizedBox(
                                        height: 12,
                                      ),
                                      Text(
                                        '${suciesController.listSucie[index].name}',
                                        style: const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    width: 90,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Text(
                                        '${suciesController.listSucie[index].price}00\$',
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
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
