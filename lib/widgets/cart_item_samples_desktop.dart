import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartItemSamplesDesktop extends StatelessWidget {
  CartItemSamplesDesktop({super.key});

  List imgList = [
    'Heals',
    'Boots',
    'Sport Shoes',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 224, 224, 224),
      ),
      child: Column(
        children: [
          for (int i = 0; i < imgList.length; i++)
            Container(
              height: 110,
              margin: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 80,
              ),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  const SizedBox(width: 20),
                  Checkbox(
                    activeColor: const Color(0xFFFD725A),
                    value: true,
                    onChanged: (value) {},
                  ),
                  const SizedBox(width: 10),
                  Container(
                    height: 70,
                    width: 70,
                    margin: const EdgeInsets.only(right: 15),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 224, 224, 244),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset("images/${imgList[i]}.png"),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          imgList[i],
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black.withOpacity(0.7),
                          ),
                        ),
                        Text(
                          'Best Selling',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black.withOpacity(0.6),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  const Text(
                    'Rp300.000',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFFD725A),
                    ),
                  ),
                  const SizedBox(width: 100),
                  Padding(
                    padding: const EdgeInsetsDirectional.symmetric(vertical: 5),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: const Color(0xFFF7F8FA),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Icon(
                            CupertinoIcons.minus,
                            size: 18,
                            color: Colors.redAccent,
                          ),
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          '01',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: const Color(0xFFF7F8FA),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Icon(
                            CupertinoIcons.plus,
                            size: 18,
                            color: Colors.redAccent,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 100),
                  const Icon(
                    Icons.delete,
                    color: Colors.redAccent,
                  ),
                  const SizedBox(width: 30),
                ],
              ),
            ),
          // BottomNavigationBar(
          //   items: const <BottomNavigationBarItem>[
          //     BottomNavigationBarItem(
          //       icon: Icon(Icons.calculate),
          //       label: 'calculate',
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
