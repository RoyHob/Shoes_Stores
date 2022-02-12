import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.1),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartTop,
      floatingActionButton: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            left: 10,
            top: 20,
            child: Container(
              height: 40,
              width: 40,
              child: FittedBox(
                child: FloatingActionButton(
                  backgroundColor: Colors.white,
                  onPressed: floatAction(),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(90),
                  ),
                  child: Icon(
                    Icons.chevron_left_sharp,
                    size: 40,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            right: 35,
            top: 20,
            child: Container(
              height: 40,
              width: 40,
              child: FittedBox(
                child: FloatingActionButton(
                  backgroundColor: Colors.white,
                  onPressed: floatAction(),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(90),
                  ),
                  child: Icon(
                    Icons.favorite_border_outlined,
                    size: 30,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: SizedBox(
              height: 500,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("Nike Blazer Mid '77 "),
                        ],
                      ),
                      Row(
                        children: [Text("79.0"), Text("99.0")],
                      ),
                      // Row()
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

floatAction() {}
