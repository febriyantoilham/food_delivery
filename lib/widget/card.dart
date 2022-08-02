import 'package:flutter/material.dart';
import 'package:food_delivery/utilities/dimension.dart';
import 'package:food_delivery/widget/button.dart';
import 'package:food_delivery/widget/text.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.nameProduct,
    required this.time,
    required this.price,
    required this.image,
  }) : super(key: key);

  final String nameProduct;
  final String time;
  final String price;
  final ImageProvider image;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0XFFf5f5f5),
      height: Dimension.screenHeight / (Dimension.screenHeight / 200),
      width: Dimension.screenWidth / (Dimension.screenWidth / 150),
      child: Stack(children: [
        Positioned(
          left: Dimension.width15,
          top: Dimension.height15,
          right: Dimension.width15,
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MediumText(text: nameProduct),
                    NormalText(text: time),
                  ],
                ),
              ),
              MediumText(text: price)
            ],
          ),
        ),
        Positioned(
          left: 0,
          bottom: 0,
          child: Padding(
            padding: EdgeInsets.all(Dimension.height15),
            child: CircleIconButton(
              icon: Icons.favorite_outline,
              size: 20,
            ),
          ),
        ),
        Positioned(
          left: 150 * (40 / 100),
          top: 200 * (30 / 100),
          child: Container(
            height: 200,
            width: 120,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: image,
                  // fit: BoxFit.fitWidth,
                  alignment: Alignment.center),
            ),
            // child: Image.asset(
            //   "assets/popcorn.png",
            // ),
          ),
        )
      ]),
    );
  }
}
