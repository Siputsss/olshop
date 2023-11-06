import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:olshop/screens/cart_screen.dart';
import 'package:olshop/screens/enum.dart';
import 'package:olshop/screens/favourite_screen.dart';
import 'package:olshop/screens/home_screen.dart';
import 'package:olshop/screens/profile/profile_screen.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key, required this.selectedMenu});
  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    const Color inactiveColor = Colors.grey;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(
              40,
            ),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0, -5),
              blurRadius: 15,
            ),
          ]),
      child: SafeArea(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: const Icon(Icons.home),
            color: MenuState.home == selectedMenu ? Colors.red : inactiveColor,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                ),
              );
            },
          ),
          IconButton(
            icon: const Icon(CupertinoIcons.cart_fill),
            color: MenuState.cart == selectedMenu ? Colors.red : inactiveColor,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CartScreen(),
                ),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.favorite),
            color: MenuState.favourite == selectedMenu ? Colors.red : inactiveColor,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FavouriteScreen(),
                ),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.person),
            color: MenuState.profile == selectedMenu ? Colors.red : inactiveColor,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProfileScreen(),
                ),
              );
            },
          ),
        ],
      )),
    );
  }
}
