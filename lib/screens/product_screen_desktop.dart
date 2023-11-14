import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductScreenDesktop extends StatelessWidget {
  ProductScreenDesktop({super.key});

  List sizes = [
    '37',
    '38',
    '39',
    '40',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 224, 224, 224),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 80, right: 80),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Center(
            child: SizedBox(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.topCenter,
                    width: MediaQuery.of(context).size.width / 3.0,
                    height: MediaQuery.of(context).size.height / 1.6,
                    decoration: const BoxDecoration(
                      // color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage("images/Heals.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 25, right: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Heels",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Rp.300.000",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                            color: Colors.red.withOpacity(0.7),
                          ),
                        ),

                        const SizedBox(height: 8),
                        const Text(
                          'For Women',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 15),
                        // Rating Bar
                        RatingBar.builder(
                          unratedColor: const Color.fromARGB(255, 223, 221, 221),
                          itemSize: 28,
                          initialRating: 3.5,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding: const EdgeInsets.symmetric(horizontal: 4),
                          onRatingUpdate: (rating) {},
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                        ),
                        const SizedBox(height: 20),
                        const SizedBox(
                          width: 500,
                          height: 80,
                          child: Text(
                            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                        // CustomBottomSheet(),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            const Text(
                              'Size: ',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(width: 30),
                            for (int i = 0; i < sizes.length; i++)
                              Container(
                                margin: const EdgeInsets.symmetric(horizontal: 8),
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: const Color(0xFFF7F8FA),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Text(sizes[i]),
                              )
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            const Text(
                              'Color:',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(width: 30),
                            Container(
                              margin: const EdgeInsets.symmetric(horizontal: 8),
                              padding: const EdgeInsets.all(13),
                              decoration: BoxDecoration(
                                color: const Color(0xFF031C3C),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(horizontal: 8),
                              padding: const EdgeInsets.all(13),
                              decoration: BoxDecoration(
                                color: const Color(0xFF3BA4BD),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(horizontal: 8),
                              padding: const EdgeInsets.all(13),
                              decoration: BoxDecoration(
                                color: Colors.redAccent,
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 60),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            InkWell(
                              onTap: () {
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //       builder: (context) => const CartScreen(),
                                //     ));
                              },
                              child: Container(
                                padding: const EdgeInsets.all(18),
                                decoration: BoxDecoration(
                                  color: const Color(0xFFF7F8FA),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: const Icon(
                                  CupertinoIcons.cart_fill,
                                  size: 22,
                                  color: Color(0xFFFD725A),
                                ),
                              ),
                            ),
                            const SizedBox(width: 50),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 18,
                                  horizontal: 70,
                                ),
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFD725A),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Text(
                                  'Buy Now',
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1,
                                    color: Colors.white.withOpacity(0.8),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
