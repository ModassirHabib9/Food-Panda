import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../controller/deals_controller.dart';
import '../../utils/default_color.dart';

class ShopDineInScreen extends StatefulWidget {
  const ShopDineInScreen({Key? key}) : super(key: key);

  @override
  _ShopDineInScreenState createState() => _ShopDineInScreenState();
}

class _ShopDineInScreenState extends State<ShopDineInScreen> {
  late TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController(
        text: 'Search for restaurant,cuisones, and dishes');
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    final DealsController dealsController = Get.put(
      DealsController(),
    );
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
        scrollDirection: Axis.vertical,
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
                      placeholder: "asdf",
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(right: 12.0, top: 12.0),
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
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 12.0, top: 12.0),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Popular Restaurant to try",
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              fontWeight: FontWeight.w800,
                              fontSize: 18,
                            ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Container(
                        height: MediaQuery.of(context).size.height * .278,
                        child: ListView.builder(
                            itemCount: PandaPickHelper.itemCount,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              PandaPickItemModel model =
                                  PandaPickHelper.getStatusItem(index);
                              return RestuarentScreen(
                                name: model.name,
                                image: model.image,
                                remainingTime: model.remaingTime,
                                totalRating: model.totalRating,
                                subTitle: model.subTitle,
                                rating: model.ratting,
                                deliveryTime: model.remaingTime,
                                deliveryPrice: model.deliveryPrice,
                              );
                            }),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 12.0, top: 12.0),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "New on Dine-in!",
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              fontWeight: FontWeight.w800,
                              fontSize: 18,
                            ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Container(
                        height: MediaQuery.of(context).size.height * .278,
                        child: ListView.builder(
                            itemCount: PandaPickHelper.itemCount,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              PandaPickItemModel model =
                                  PandaPickHelper.getStatusItem(index);
                              return RestuarentScreen(
                                name: model.name,
                                image: model.image,
                                remainingTime: model.remaingTime,
                                totalRating: model.totalRating,
                                subTitle: model.subTitle,
                                rating: model.ratting,
                                deliveryTime: model.remaingTime,
                                deliveryPrice: model.deliveryPrice,
                              );
                            }),
                      ),
                    ),

                    /// All restaurants
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 12.0, top: 12.0),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "All Restaurant",
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              fontWeight: FontWeight.w800,
                              fontSize: 18,
                            ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.60,
                        child: ListView.builder(
                            itemCount: PandaPickHelper.itemCount,
                            scrollDirection: Axis.vertical,
                            itemBuilder: (context, index) {
                              PandaPickItemModel model =
                                  PandaPickHelper.getStatusItem(index);
                              return RestuarentScreen(
                                name: model.name,
                                image: model.image,
                                remainingTime: model.remaingTime,
                                totalRating: model.totalRating,
                                subTitle: model.subTitle,
                                rating: model.ratting,
                                deliveryTime: model.remaingTime,
                                deliveryPrice: model.deliveryPrice,
                              );
                            }),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ])),
        ],
      ),
    );
  }
}

class MyColors {
  static const Color primaryColor = const Color(0xffd60265);
  static const Color secondaryTextColor = const Color(0xffd60265);

  static const MaterialColor navy = MaterialColor(
    0xffd60265,
    <int, Color>{
      50: Color(0xffd60265),
      100: Color(0xffd60265),
      200: Color(0xffd60265),
      300: Color(0xffd60265),
      400: Color(0xffd60265),
      500: Color(0xffd60265),
      600: Color(0xffd60265),
      700: Color(0xffd60265),
      800: Color(0xffd60265),
      900: Color(0xffd60265),
    },
  );
}

class PandaPickHelper {
  static var statusList = [
    PandaPickItemModel(
        name: 'New York Pizza',
        deliveryPrice: '90',
        remaingTime: '30 min',
        image: "image/food5.jpg",
        ratting: '4.8',
        subTitle: 'New York',
        totalRating: '1.2k'),
    PandaPickItemModel(
        name: 'Burger Lab',
        deliveryPrice: '50',
        remaingTime: '25 min',
        image: "image/food5.jpg",
        ratting: '4.2',
        subTitle: 'Burgers',
        totalRating: '230'),
    PandaPickItemModel(
        name: 'Jans Delights',
        deliveryPrice: '600',
        remaingTime: '20 min',
        image: "image/food5.jpg",
        ratting: '2.5',
        subTitle: "Pakistani",
        totalRating: '400'),
  ];

  static PandaPickItemModel getStatusItem(int position) {
    return statusList[position];
  }

  static var itemCount = statusList.length;
}

class PandaPickItemModel {
  String name;
  String remaingTime;
  String deliveryPrice;
  String image;
  String ratting;
  String totalRating;
  String subTitle;

  PandaPickItemModel(
      {required this.name,
      required this.remaingTime,
      required this.deliveryPrice,
      required this.image,
      required this.ratting,
      required this.subTitle,
      required this.totalRating});
}

class RestuarentScreen extends StatefulWidget {
  final String name,
      image,
      remainingTime,
      subTitle,
      rating,
      deliveryTime,
      totalRating,
      deliveryPrice;
  const RestuarentScreen(
      {Key? key,
      required this.name,
      required this.image,
      required this.remainingTime,
      required this.rating,
      required this.deliveryTime,
      required this.totalRating,
      required this.subTitle,
      required this.deliveryPrice})
      : super(key: key);

  @override
  _RestuarentScreenState createState() => _RestuarentScreenState();
}

class _RestuarentScreenState extends State<RestuarentScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return InkWell(
      onTap: () {
        // Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen(name: widget.name, image: widget.image)));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Container(
          height: height * .3,
          width: width * .6,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image(
                          fit: BoxFit.fitWidth,
                          height: height * .2,
                          width: double.infinity,
                          image: AssetImage(widget.image))),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Container(
                      decoration: BoxDecoration(
                          color: MyColors.primaryColor,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          )),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 7, left: 5, right: 10, bottom: 7),
                        child: Text(
                          "Flash 20% OFF",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 10,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xfffffcff),
                            borderRadius: BorderRadius.circular(20.0)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          child: Text(
                            widget.remainingTime,
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
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.name,
                    style: TextStyle(
                      color: Color(0xff323232),
                      fontSize: 14,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        " " + widget.rating,
                        style:
                            TextStyle(color: Color(0xff323232), fontSize: 12),
                      ),
                      Text(
                        "  (" + widget.totalRating + ")",
                        style: TextStyle(
                          color: Color(0xffa9a9a9),
                          fontSize: 12,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 3,
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                r"$ • " + widget.subTitle,
                style: TextStyle(
                  color: Color(0xff707070),
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: 3,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.directions_bike,
                    size: 14,
                    color: MyColors.primaryColor,
                  ),
                  Text(
                    r"  Rs  " + widget.deliveryPrice,
                    style: TextStyle(
                      color: Color(0xff707070),
                      fontSize: 12,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
