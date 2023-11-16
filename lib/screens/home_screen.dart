import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:olshop/screens/enum.dart';
import 'package:olshop/screens/profile/profile_pic.dart';
import 'package:olshop/widgets/bottom_nav_bar.dart';
import 'package:olshop/widgets/reusable_row.dart';

import '../widgets/product_card.dart';
import 'cart_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  List catList = [
    'All',
    'Best Selling',
    'Heals',
    'Boots',
    'Sport',
    'Leather',
  ];

  List imgList = [
    'Heals',
    'Boots',
    'Sport Shoes',
    'Leather Shoes',
  ];

  List<String> images = [
    "images/image1.jpg",
    "images/image2.jpg",
    "images/image3.jpg",
    "images/image4.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.lightBlue,
              ),
              child: Column(
                children: [
                  ProfilePic(),
                ],
              ),
            ),
            const ReusableRow(
              title: "Username",
              iconData: Icons.person,
            ),
            const ReusableRow(
              title: "Email Address",
              iconData: Icons.email,
            ),
            const SizedBox(height: 100),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('close'),
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                    padding: const EdgeInsets.only(right: 25, left: 10),
                    child: width <= 900 ? const Mobile() : const Desktop()),
                SizedBox(
                  height: 250,
                  width: MediaQuery.of(context).size.width,
                  child: FanCarouselImageSlider(
                    sliderHeight: 230,
                    autoPlay: true,
                    imagesLink: images,
                    isAssets: true,
                    imageRadius: 10,
                    isClickable: false,
                    sidesOpacity: 0.0,
                    currentItemShadow: const [
                      BoxShadow(
                        blurRadius: 5,
                        color: Colors.black38,
                      )
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Row(
                      children: [
                        for (int i = 0; i < catList.length; i++)
                          Container(
                            margin: const EdgeInsets.all(8),
                            padding: const EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 18,
                            ),
                            decoration: BoxDecoration(
                              color: catList[i] == 'All' ? const Color(0xFFFD725A) : const Color(0xFFF7F8FA),
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: Text(
                              catList[i],
                              style: TextStyle(
                                fontSize: 16,
                                color: catList[i] == 'All' ? Colors.white : Colors.grey,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
                GridView.builder(
                  itemCount: imgList.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.6,
                    crossAxisSpacing: 2,
                  ),
                  itemBuilder: (context, index) {
                    return ProductCard(imgList[index]);
                  },
                )
              ],
            ),
          ),
        ),
      ),

      bottomNavigationBar: width <= 900
          ? const BottomNavBar(selectedMenu: MenuState.home)
          : Container(
              height: 10,
              width: 10,
              color: Colors.white,
            ),
      //
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFFFD725A),
        child: const Icon(Icons.camera_alt_rounded),
        onPressed: () {},
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.
    );
  }
}

class Mobile extends StatelessWidget {
  const Mobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: MediaQuery.of(context).size.width / 1.5,
          decoration: BoxDecoration(
            color: const Color(0xFFF7F8FA),
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                color: Colors.black38,
                blurRadius: 4,
              ),
            ],
          ),
          child: const TextField(
            cursorColor: Color(0xFFFD725A),
            decoration: InputDecoration(
              prefixIconColor: Color(0xFFFD725A),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
              prefixIcon: Icon(Icons.search),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(15),
          decoration:
              BoxDecoration(color: const Color(0xFFF7F8FA), borderRadius: BorderRadius.circular(20), boxShadow: const [
            BoxShadow(
              color: Colors.black38,
              blurRadius: 4,
            ),
          ]),
          child: const Icon(
            Icons.notifications_none,
            size: 30,
            color: Colors.redAccent,
          ),
        )
      ],
    );
  }
}

class Desktop extends StatelessWidget {
  const Desktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: MediaQuery.of(context).size.width / 1.5,
          decoration: BoxDecoration(
            color: const Color(0xFFF7F8FA),
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                color: Colors.black38,
                blurRadius: 4,
              ),
            ],
          ),
          child: const TextField(
            cursorColor: Color(0xFFFD725A),
            decoration: InputDecoration(
              prefixIconColor: Color(0xFFFD725A),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
              prefixIcon: Icon(Icons.search),
            ),
          ),
        ),
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: const Color(0xFFF7F8FA),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black38,
                      blurRadius: 4,
                    ),
                  ]),
              child: const Icon(
                Icons.notifications_none,
                size: 30,
                color: Colors.redAccent,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CartScreen(),
                  ),
                );
              },
              icon: const Icon(CupertinoIcons.cart_fill),
            ),
            IconButton(icon: const Icon(Icons.person), onPressed: () => Scaffold.of(context).openDrawer()),
          ],
        ),
      ],
    );
  }
}
