import 'package:flutter/material.dart';

import '../screens/product_screen.dart';

class ProductCard extends StatefulWidget {
  String img;
  ProductCard(this.img, {super.key});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool isLike = false;
  final Color inactiveColor = Colors.black38;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
                color: const Color.fromARGB(255, 224, 224, 224),
                child: Stack(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProductScreen(widget.img),
                            ));
                      },
                      child: Image.asset(
                        "Images/${widget.img}.png",
                        fit: BoxFit.cover,
                        height: 230,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: MaterialButton(
                        color: Colors.white,
                        padding: const EdgeInsets.all(16),
                        shape: const CircleBorder(),
                        onPressed: () {
                          setState(() {
                            isLike = !isLike;
                          });
                        },
                        child: Icon(
                          isLike ? Icons.favorite : Icons.favorite_border_outlined,
                          size: 20,
                          color: isLike ? Colors.red : inactiveColor,
                        ),
                      ),
                    )
                  ],
                )),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.img,
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w500,
                      color: Colors.black.withOpacity(0.7),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "Rp.300.000",
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w500,
                      color: Colors.red.withOpacity(0.7),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
