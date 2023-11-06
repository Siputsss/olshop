import 'package:flutter/material.dart';
import 'package:olshop/screens/enum.dart';
import 'package:olshop/widgets/bottom_nav_bar.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favourite'),
      ),
      body: Container(),
      bottomNavigationBar: const BottomNavBar(selectedMenu: MenuState.favourite),
    );
  }
}
