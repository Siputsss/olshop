import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:flutter/material.dart';
import 'package:olshop/screens/enum.dart';
import 'package:olshop/widgets/bottom_nav_bar.dart';

import '../widgets/product_card.dart';

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
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 25, left: 10),
                  child: Row(
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
                      )
                    ],
                  ),
                ),
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
      bottomNavigationBar: const BottomNavBar(selectedMenu: MenuState.home),
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
