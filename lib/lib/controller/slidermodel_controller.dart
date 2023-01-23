import 'package:get/get.dart';

import '../model/pandamart_model.dart/item_grid_model.dart';
import '../model/pandamart_model.dart/slider_model.dart';

class SliderController extends GetxController {
  int activeIndex = 0;
  int activeIndex2 = 0;
  final viewMore = false.obs;
  final slide = <SliderModel>[
    SliderModel(
      image:
          "https://i0.wp.com/www.kbcambodia.com/wp-content/uploads/2015/10/the-pizza-company-4.jpg?fit=1024%2C384&ssl=1",
    ),
    SliderModel(
      image:
          "https://dap-business.com/wp-content/uploads/2021/08/155-1024x510.png",
    ),
    SliderModel(
      image:
          "https://www.cbcl.com.kh/wp-content/uploads/2020/06/BG-Product.jpg",
    ),
    SliderModel(
      image:
          "https://cdn.sanity.io/images/92ui5egz/production/3802afc076601eb3faa410323c22e88c55e6bc29-1920x1080.jpg?w=1920&h=1080&auto=format",
    ),
    SliderModel(
      image:
          "https://exchangesquare.com.kh/wp-content/uploads/2017/05/cafe-amazon.jpg",
    ),
    SliderModel(
      image:
          "https://i0.wp.com/www.kbcambodia.com/wp-content/uploads/2016/07/Koi-Cafe-2.jpg?fit=960%2C354&ssl=1",
    ),
  ].obs;
  final slide2 = <SliderModel>[
    SliderModel(
      image:
          "https://i0.wp.com/www.kbcambodia.com/wp-content/uploads/2015/10/the-pizza-company-4.jpg?fit=1024%2C384&ssl=1",
    ),
    SliderModel(
      image:
          "https://dap-business.com/wp-content/uploads/2021/08/155-1024x510.png",
    ),
    SliderModel(
      image:
          "https://www.cbcl.com.kh/wp-content/uploads/2020/06/BG-Product.jpg",
    ),
    SliderModel(
      image:
          "https://cdn.sanity.io/images/92ui5egz/production/3802afc076601eb3faa410323c22e88c55e6bc29-1920x1080.jpg?w=1920&h=1080&auto=format",
    ),
    SliderModel(
      image:
          "https://exchangesquare.com.kh/wp-content/uploads/2017/05/cafe-amazon.jpg",
    ),
    SliderModel(
      image:
          "https://i0.wp.com/www.kbcambodia.com/wp-content/uploads/2016/07/Koi-Cafe-2.jpg?fit=960%2C354&ssl=1",
    ),
    SliderModel(
      image:
          "https://img.fresherslive.com/latestnews/images/articles/width-900/2022/02/25/sting-energy-drink-ad-cast-62184db971075-1645759929.jpg",
    ),
    SliderModel(
      image: "https://i.ytimg.com/vi/VVQedfgm7gY/maxresdefault.jpg",
    ),
    SliderModel(
      image:
          "https://cdnb.artstation.com/p/marketplace/presentation_assets/000/390/477/large/file.jpg?1590869411",
    ),
    SliderModel(
      image:
          "https://m.media-amazon.com/images/S/aplus-media/vc/650085a8-e613-4d24-b831-4e82d65746e5._.jpg",
    ),
    SliderModel(
      image:
          "https://i0.wp.com/annyeongoppa.com/wp-content/uploads/2021/02/13784f1b-b7f0-420e-8895-2a14b2eb2490.png?fit=2560%2C1440&ssl=1",
    ),
  ].obs;

  final gridItem = <ItemGrid>[
    ItemGrid(
      image: "https://cdn-icons-png.flaticon.com/512/25/25694.png",
      tilte: "Home\nEssentials",
      items: 124,
    ),
    ItemGrid(
      image: "https://cdn-icons-png.flaticon.com/512/164/164571.png",
      tilte: "Chinese\nEssentials",
      items: 6,
    ),
    ItemGrid(
      image:
          "https://cdn.iconscout.com/icon/free/png-256/alcohol-party-beverage-celebration-wine-drink-xmas-4-30834.png",
      tilte: "Alcoholic\nBeverages",
      items: 220,
    ),
    ItemGrid(
      image:
          "https://gogeticon.net/files/2887824/db8258b720d5d555d5db17c341bbd1ac.png",
      tilte: "Non-Alcoholic\nBeverages",
      items: 340,
    ),
    ItemGrid(
      image: "https://cdn-icons-png.flaticon.com/512/1940/1940199.png",
      tilte: "Snack/Nuts/\nChip",
      items: 206,
    ),
    ItemGrid(
      image: "https://icon-library.com/images/icon-makeup/icon-makeup-11.jpg",
      tilte: "Health &\nBeauty",
      items: 544,
    ),
    ItemGrid(
      image: "https://cdn-icons-png.flaticon.com/512/620/620120.png",
      tilte: "Condiment",
      items: 158,
    ),
    ItemGrid(
      image: "https://cdn-icons-png.flaticon.com/512/3050/3050158.png",
      tilte: "Daily & Dairy",
      items: 84,
    ),
    ItemGrid(
      image: "https://cdn-icons-png.flaticon.com/512/3082/3082004.png",
      tilte: "Frozen",
      items: 72,
    ),
    ItemGrid(
      image: "https://icon-library.com/images/noodle-icon/noodle-icon-19.jpg",
      tilte: "Noodle/Pasta\n& Rice",
      items: 161,
    ),
    ItemGrid(
      image:
          "https://i.pinimg.com/originals/f5/2f/76/f52f769aec4d64a5f526b80450b821ff.png",
      tilte: "Detergetn/\nCleaner",
      items: 238,
    ),
    ItemGrid(
      image: "https://cdn-icons-png.flaticon.com/512/3082/3082018.png",
      tilte: "Sauces",
      items: 148,
    ),
    ItemGrid(
      image: "https://cdn-icons-png.flaticon.com/512/926/926255.png",
      tilte: "Breakfast",
      items: 140,
    ),
    ItemGrid(
      image: "https://cdn-icons-png.flaticon.com/512/822/822123.png",
      tilte: "Mom & Baby",
      items: 121,
    ),
    ItemGrid(
      image: "https://cdn-icons-png.flaticon.com/512/784/784160.png",
      tilte: "Men Grooming",
      items: 108,
    ),
    ItemGrid(
      image: "https://cdn-icons-png.flaticon.com/512/648/648872.png",
      tilte: "Ice Cream",
      items: 77,
    ),
    ItemGrid(
      image: "https://cdn-icons-png.flaticon.com/512/385/385138.png",
      tilte: "Canned Food",
      items: 64,
    ),
    ItemGrid(
      image: "https://cdn-icons-png.flaticon.com/512/527/527698.png",
      tilte: "Confectionary",
      items: 58,
    ),
    ItemGrid(
      image:
          "https://cdn.iconscout.com/icon/free/png-256/loaf-bread-1508808-1275257.png",
      tilte: "Bakery",
      items: 10,
    ),
    ItemGrid(
      image:
          "https://i.pinimg.com/originals/1f/00/20/1f0020c223255ca51d1812725fa3e302.png",
      tilte: "Baking",
      items: 2,
    ),
    ItemGrid(
      image: "https://cdn-icons-png.flaticon.com/512/2271/2271024.png",
      tilte: "Delicatessen",
      items: 4,
    ),
    ItemGrid(
      image: "https://cdn-icons-png.flaticon.com/512/404/404006.png",
      tilte: "Pet",
      items: 25,
    ),
    ItemGrid(
      image: "https://cdn-icons-png.flaticon.com/512/2850/2850430.png",
      tilte: "Paper &\nTissues",
      items: 25,
    ),
    ItemGrid(
      image: "https://cdn-icons-png.flaticon.com/512/4576/4576015.png",
      tilte: "Party Suppplies",
      items: 53,
    ),
  ].obs;
}
