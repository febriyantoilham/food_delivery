import 'package:flutter/material.dart';
import 'package:food_delivery/screen/home/home_page.dart';
import 'package:food_delivery/utilities/color.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Text("Favorite Page"),
    Text("Cart Page"),
    Text("Promo Page"),
    Text("Profil Page"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              activeColor: AppColor.mainColor,
              iconSize: 24,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: const Duration(milliseconds: 400),
              // tabBackgroundColor: Colors.grey[100]!,
              color: Colors.grey,
              tabs: [
                GButton(
                  icon: _selectedIndex == 0 ? Icons.home : Icons.home_outlined,
                ),
                GButton(
                  icon: _selectedIndex == 1
                      ? Icons.favorite
                      : Icons.favorite_outline,
                ),
                GButton(
                  icon: _selectedIndex == 2
                      ? Icons.shopping_cart
                      : Icons.shopping_cart_outlined,
                ),
                GButton(
                  icon: _selectedIndex == 3
                      ? Icons.discount
                      : Icons.discount_outlined,
                ),
                GButton(
                  icon:
                      _selectedIndex == 4 ? Icons.person : Icons.person_outline,
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
