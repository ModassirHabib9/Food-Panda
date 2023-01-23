import 'package:get/get.dart';

import '../model/sucieslide_model.dart';

class SuciesController extends GetxController {
  final listSucie = <Sucie>[
    Sucie(
      img:
          "https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/iphone11-select-2019-family?wid=882&hei=1058&fmt=jpeg&qlt=90&.v=1567022175704",
      name: "iPhone11",
      price: 1.200,
    ),
    Sucie(
      img:
          "https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/iphone-13-pro-max-graphite-select?wid=470&hei=556&fmt=jpeg&qlt=95&.v=1645552346288",
      name: "iPhone12",
      price: 1.500,
    ),
    Sucie(
      img:
          "https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/iphone-12-family-select-2021?wid=940&hei=1112&fmt=jpeg&qlt=90&.v=1617135051000",
      name: "iPhone13",
      price: 1.300,
    ),
    Sucie(
      img:
          "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/macbook-air-space-gray-select-201810?wid=904&hei=840&fmt=jpeg&qlt=90&.v=1633027804000",
      name: "Mac Book Air",
      price: 2.200,
    ),
    Sucie(
      img:
          "https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/HA244?wid=1144&hei=1144&fmt=jpeg&qlt=95&.v=1631831826000",
      name: "Mac Book Pro",
      price: 2.500,
    ),
    Sucie(
      img:
          "https://www.tradeinn.com/f/13787/137870852/apple-macbook-pro-13-m1-8gb-512gb-ssd-laptop.jpg",
      name: "Mac Book Pro M2",
      price: 3.200,
    ),
  ].obs;
}
