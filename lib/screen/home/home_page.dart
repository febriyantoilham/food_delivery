import 'package:flutter/material.dart';
import 'package:food_delivery/utilities/color.dart';
import 'package:food_delivery/utilities/dimension.dart';
import 'package:food_delivery/widget/button.dart';
import 'package:food_delivery/widget/text.dart';
import 'package:food_delivery/widget/textfield.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: Container(
        margin: EdgeInsets.only(top: Dimension.statusBarHeight),
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              // Top Bar Profile Pic, Name, Notification
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleButton(
                        image: AssetImage("assets/profile-avatar.png"),
                        bgColor: AppColor.mainColor.withOpacity(0.60),
                      ),
                      SizedBox(width: Dimension.width15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          MediumText(text: "Hello Brian 👋"),
                          NormalText(text: "Time for lunch"),
                        ],
                      )
                    ],
                  ),
                  const CircleIconButton(
                    icon: Icons.notifications_outlined,
                  )
                ],
              ),
              SizedBox(height: Dimension.height20),
              // Search Bar
              Row(
                children: [
                  const AppTextField(
                    text: "Search food...",
                    icon: Icon(Icons.search_outlined),
                  ),
                  SizedBox(width: Dimension.width15),
                  const SquareIconButton(
                    icon: Icons.filter_list_outlined,
                    boxColor: AppColor.mainColor,
                    iconColor: Colors.white,
                  )
                ],
              ),
              SizedBox(height: Dimension.height20),
              // Banner
              Container(
                width: double.maxFinite,
                height: Dimension.screenHeight / (Dimension.screenHeight / 120),
                padding: EdgeInsets.all(Dimension.height15),
                decoration: BoxDecoration(
                    color: AppColor.mainColor,
                    borderRadius: BorderRadius.circular(Dimension.radius10)),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Image.asset(
                        "assets/burger.png",
                      ),
                    ),
                    SizedBox(width: Dimension.width20),
                    Expanded(
                        flex: 3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const MediumText(
                              text: "Special offer for you in August",
                              color: Colors.white,
                            ),
                            // SizedBox(height: Dimension.height20),
                            Row(
                              children: [
                                SquareButton(
                                    text: "Buy Now",
                                    padding: Dimension.height10),
                              ],
                            )
                          ],
                        )),
                  ],
                ),
              ),
              // Food Category
              SizedBox(height: Dimension.height20),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const MediumText(
                        text: "Choose Category",
                        color: Colors.black,
                      ),
                      Row(
                        children: const [
                          NormalText(
                            text: "View More",
                            color: AppColor.mainColor,
                          ),
                          Icon(
                            Icons.navigate_next,
                            color: AppColor.mainColor,
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: Dimension.height10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            CircleButton(
                              image: AssetImage("assets/burger.png"),
                              bgColor: AppColor.mainColor.withOpacity(0.60),
                            ),
                            SizedBox(height: Dimension.height10),
                            const NormalText(
                              text: "Burger",
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            )
                          ],
                        ),
                        SizedBox(width: Dimension.width30),
                        Column(
                          children: [
                            const CircleButton(
                              image: AssetImage("assets/cake.png"),
                              bgColor: Colors.transparent,
                            ),
                            SizedBox(height: Dimension.height10),
                            const NormalText(
                              text: "Cakes",
                              fontWeight: FontWeight.w500,
                            )
                          ],
                        ),
                        SizedBox(width: Dimension.width30),
                        Column(
                          children: [
                            const CircleButton(
                              image: AssetImage("assets/coffe.png"),
                              bgColor: Colors.transparent,
                            ),
                            SizedBox(height: Dimension.height10),
                            const NormalText(
                              text: "Coffe",
                              fontWeight: FontWeight.w500,
                            )
                          ],
                        ),
                        SizedBox(width: Dimension.width30),
                        Column(
                          children: [
                            const CircleButton(
                              image: AssetImage("assets/icecream.png"),
                              bgColor: Colors.transparent,
                            ),
                            SizedBox(height: Dimension.height10),
                            const NormalText(
                              text: "Ice Cream",
                              fontWeight: FontWeight.w500,
                            )
                          ],
                        ),
                        SizedBox(width: Dimension.width30),
                        Column(
                          children: [
                            const CircleButton(
                              image: AssetImage("assets/pizza.png"),
                              bgColor: Colors.transparent,
                            ),
                            SizedBox(height: Dimension.height10),
                            const NormalText(
                              text: "Pizza",
                              fontWeight: FontWeight.w500,
                            )
                          ],
                        ),
                        SizedBox(width: Dimension.width30),
                        Column(
                          children: [
                            const CircleButton(
                              image: AssetImage("assets/popcorn.png"),
                              bgColor: Colors.transparent,
                            ),
                            SizedBox(height: Dimension.height10),
                            const NormalText(
                              text: "Pop Corn",
                              fontWeight: FontWeight.w500,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: Dimension.height20),
              // Popular Food Menu
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const MediumText(
                        text: "Popular Menu",
                        color: Colors.black,
                      ),
                      Row(
                        children: const [
                          NormalText(
                            text: "View More",
                            color: AppColor.mainColor,
                          ),
                          Icon(
                            Icons.navigate_next,
                            color: AppColor.mainColor,
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
