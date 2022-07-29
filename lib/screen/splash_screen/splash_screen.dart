import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/route.dart';
import 'package:food_delivery/utilities/color.dart';
import 'package:food_delivery/utilities/dimension.dart';
import 'package:food_delivery/widget/button.dart';
import 'package:food_delivery/widget/text.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.mainColor,
      body: Stack(
        children: [
          Positioned(
            top: Dimension.statusBarHeight,
            left: Dimension.width20,
            right: Dimension.width20,
            height: Dimension.screenHeight * (60 / 100),
            child: Image.asset(
              "assets/food_delivery_vector.png",
              height: Dimension.screenWidth * (70 / 100),
              width: Dimension.screenWidth * (70 / 100),
            ),
          ),
          Positioned(
              bottom: 0,
              left: Dimension.width20,
              right: Dimension.width20,
              height: Dimension.screenHeight * (40 / 100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: Dimension.screenWidth,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: Dimension.screenWidth * (80 / 100),
                          child: const BigText(
                            text: "Choose your best delicious food only!",
                          ),
                        ),
                        SizedBox(height: Dimension.height10),
                        SizedBox(
                          width: Dimension.screenWidth * (70 / 100),
                          child: NormalText(
                            text:
                                "Don't worry we are here to give the best to solve your hunger problem.",
                            color: Colors.grey.shade300,
                          ),
                        ),
                        SizedBox(height: Dimension.height15),
                        DotsIndicator(
                          dotsCount: 3,
                          position: 0,
                          decorator: DotsDecorator(
                            activeColor: Colors.white,
                            size: const Size.square(9.0),
                            activeSize: Size(Dimension.width40, 9.0),
                            activeShape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SquareButton(
                    onTap: () {
                      Get.offNamed(RouteHelper.getNavbar());
                    },
                    text: "Get Started",
                    width: double.maxFinite,
                  )
                ],
              ))
        ],
      ),
    );
  }
}
