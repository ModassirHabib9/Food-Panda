import 'package:flutter/material.dart';

class DailyDeals extends StatelessWidget {
  const DailyDeals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
                "https://images.deliveryhero.io/image/fd-ph/LH/b2wh-hero.jpg"),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: 410,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: const [
                    Icon(
                      Icons.warning_amber_rounded,
                      color: Colors.pink,
                      size: 35,
                    ),
                    Text(
                      "Campaign Info",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Spacer(),
                    Text(
                      "Read more >",
                      style: TextStyle(
                          color: Colors.pink, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: 410,
              height: 250,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: NetworkImage(
                    "https://i0.wp.com/www.kbcambodia.com/wp-content/uploads/2016/07/cafe-amazon-1.jpg?fit=1024%2C578&ssl=1",
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: 410,
              height: 250,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: NetworkImage(
                    "http://www.foodbuzz.site/wp-content/uploads/2017/10/450-x-600-4.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: 410,
              height: 250,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: NetworkImage(
                    "https://i0.wp.com/phnompenhtime.com/wp-content/uploads/2016/09/KOI-Cafe-Menu-4.jpg?ssl=1",
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: 410,
              height: 250,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: NetworkImage(
                    "https://livingasean.com/wp-content/uploads/2017/06/feature_brown-cambodia-coffee-shop.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: 410,
              height: 250,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: NetworkImage(
                    "https://blog.jongnhams.com/wp-content/uploads/2018/09/Template-for-food-blog-Recovered.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
