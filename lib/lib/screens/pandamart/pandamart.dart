import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../controller/deals_controller.dart';
import '../../controller/slidermodel_controller.dart';
import '../../utils/default_color.dart';

class PandamartScreen extends StatefulWidget {
  const PandamartScreen({Key? key}) : super(key: key);

  @override
  State<PandamartScreen> createState() => _PandamartScreenState();
}

class _PandamartScreenState extends State<PandamartScreen> {
  @override
  Widget build(BuildContext context) {
    final SliderController sliderController = Get.put(SliderController());
    final DealsController dealsController = Get.put(DealsController());
    return Scaffold(
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
          "Pandamart",
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
      body: Obx(
        () => CustomScrollView(
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
              delegate: SliverChildListDelegate([
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.warning_amber_rounded,
                          color: Colors.pink,
                        ),
                        const Text("Shop information"),
                        const Spacer(),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            "View",
                            style: TextStyle(color: Colors.pink),
                          ),
                        ),
                      ],
                    ),
                    // Card(
                    //   elevation: 10,
                    //   child: SizedBox(
                    //     height: 200,
                    //     child: ListView.builder(
                    //         scrollDirection: Axis.horizontal,
                    //         itemCount: sliderController.slide.length,
                    //         itemBuilder: (context, index) {
                    //           return Card(
                    //             child: Container(
                    //               width: 250,
                    //               decoration: BoxDecoration(
                    //                 border: Border.all(
                    //                   color: Colors.black26,
                    //                 ),
                    //                 borderRadius: BorderRadius.circular(10),
                    //                 image: DecorationImage(
                    //                   image: NetworkImage(
                    //                       '${sliderController.slide[index].image}'),
                    //                   fit: BoxFit.cover,
                    //                 ),
                    //               ),
                    //             ),
                    //           );
                    //         }),
                    //   ),
                    // ),
                    Center(
                      child: Column(
                        children: [
                          CarouselSlider.builder(
                            itemCount: sliderController.slide.length,
                            itemBuilder: (context, index, realIndex) {
                              return Container(
                                margin: const EdgeInsets.symmetric(
                                  horizontal: 5,
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black38,
                                    width: 1,
                                    style: BorderStyle.solid,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      '${sliderController.slide[index].image}',
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              );
                            },
                            options: CarouselOptions(
                              autoPlay: true,
                              autoPlayInterval: const Duration(
                                seconds: 10,
                              ),
                              onPageChanged: (index, reason) {
                                setState(() {
                                  sliderController.activeIndex = index;
                                });
                              },
                              height: 150,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          AnimatedSmoothIndicator(
                            activeIndex: sliderController.activeIndex,
                            count: sliderController.slide.length,
                            effect: const WormEffect(
                              activeDotColor: Colors.pink,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          GridView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: sliderController.viewMore.value
                                  ? sliderController.gridItem.length
                                  : 16,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 4,
                                crossAxisSpacing: 5,
                                mainAxisSpacing: 5,
                              ),
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
                                          '${sliderController.gridItem[index].image}',
                                          height: 30,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      '${sliderController.gridItem[index].tilte}',
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                );
                              }),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white),
                            ),
                            onPressed: () {
                              sliderController.viewMore.value =
                                  !sliderController.viewMore.value;
                            },
                            child: sliderController.viewMore.value
                                ? Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Icon(
                                        Icons.keyboard_arrow_up,
                                        color: Colors.pink,
                                      ),
                                      Text(
                                        "View less",
                                        style: TextStyle(
                                          color: Colors.pink,
                                        ),
                                      )
                                    ],
                                  )
                                : Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Icon(
                                        Icons.keyboard_arrow_down,
                                        color: Colors.pink,
                                      ),
                                      Text(
                                        "View all cataegories",
                                        style: TextStyle(
                                          color: Colors.pink,
                                        ),
                                      )
                                    ],
                                  ),
                          ),
                          CarouselSlider.builder(
                            itemCount: sliderController.slide.length,
                            itemBuilder: (context, index, realIndex) {
                              return Container(
                                margin: const EdgeInsets.symmetric(
                                  horizontal: 5,
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black38,
                                    width: 1,
                                    style: BorderStyle.solid,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      '${sliderController.slide[index].image}',
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              );
                            },
                            options: CarouselOptions(
                              autoPlay: true,
                              autoPlayInterval: const Duration(
                                seconds: 10,
                              ),
                              onPageChanged: (index, reason) {
                                setState(() {
                                  sliderController.activeIndex2 = index;
                                });
                              },
                              height: 150,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          AnimatedSmoothIndicator(
                            activeIndex: sliderController.activeIndex2,
                            count: sliderController.slide.length,
                            effect: const WormEffect(
                              activeDotColor: Colors.pink,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "New Store",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 200,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: dealsController.deals.length,
                          itemBuilder: (context, index) {
                            return Card(
                              child: Image.asset(
                                  "${dealsController.deals[index].img}"),
                            );
                          }),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Newbie Town",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 1100,
                      child: ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: sliderController.slide.length,
                          itemBuilder: (context, index) {
                            return Stack(
                              children: [
                                Card(
                                  child: Image.network(
                                    "${sliderController.slide[index].image}",
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 30,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      color: Colors.pink,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        "New",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            );
                          }),
                    ),
                  ],
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
