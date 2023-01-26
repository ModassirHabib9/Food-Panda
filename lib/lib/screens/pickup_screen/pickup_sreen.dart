import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/deals_controller.dart';
import '../../controller/slidermodel_controller.dart';
import '../../utils/default_color.dart';

class PickupScreen extends StatefulWidget {
  const PickupScreen({Key? key}) : super(key: key);

  @override
  State<PickupScreen> createState() => _PickupScreenState();
}

class _PickupScreenState extends State<PickupScreen> {
  TextEditingController? _textController;

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController(
        text: 'Search for restaurant,cuisones, and dishes');
  }

  @override
  Widget build(BuildContext context) {
    final DealsController dealsController = Get.put(DealsController());
    final SliderController sliderController = Get.put(SliderController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: DefaultColor.backgroundWhite,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: DefaultColor.primary),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.favorite_border, color: DefaultColor.primary),
          ),
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.card_travel, color: DefaultColor.primary),
          ),
        ],
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Rehman Wood Center",
              style: TextStyle(fontSize: 14, color: DefaultColor.colorBlack),
            ),
            SizedBox(height: 5),
            Text(
              "Dine-in",
              style: TextStyle(fontSize: 10, color: DefaultColor.colorBlack),
            ),
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            floating: true,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(5),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Row(
                  children: [
                    Expanded(
                        child: CupertinoTextField(
                      controller: _textController,
                      padding:
                          EdgeInsets.symmetric(vertical: 12, horizontal: 10),
                      placeholder: "Search your favorite restaurant",
                      prefix: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Icon(
                          Icons.search,
                          color: Color(0xff7b7b7b),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Color(0xfff7f7f7),
                          borderRadius: BorderRadius.circular(50)),
                      style: TextStyle(
                        color: Color(0xff707070),
                        fontSize: 12,
                      ),
                    )),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.filter_list_outlined)
                  ],
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              /*Container(
                color: Colors.red[50],
                height: 90,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        "Use code \"PUCOOL\""
                        " to get 10% extra on your\n pick up order on a min spend to \$4 valid until\n 30/06/22 ",
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
              ),*/
              const SizedBox(
                height: 5,
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
                              height: 150,
                            ),
                          ],
                        ),
                      );
                    }),
              ),
              SizedBox(height: 20),
              const Text(
                "Shop By Store",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 1500,
                child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: sliderController.slide2.length,
                    itemBuilder: (context, index) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Stack(
                              children: [
                                Card(
                                  child: Image.asset(
                                    "image/food3.png",
                                    height: 140,
                                  ),
                                ),
                                Positioned(
                                  right: 0,
                                  // padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 20,
                                    // alignment: Alignment.topRight,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      color: Colors.pink,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        "25 min",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 10),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                              flex: 2,
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Panda Mart Setalite"),
                                      IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.favorite_border))
                                    ],
                                  ),

                                  /// discount
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Icon(Icons.directions_bike,
                                          size: 15,
                                          color: DefaultColor.primary),
                                      SizedBox(width: 10),
                                      Text("Rs. 199"),
                                    ],
                                  ),
                                ],
                              ))
                        ],
                      );
                    }),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
