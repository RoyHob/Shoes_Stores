import 'package:flutlab/Constants/style.dart';
import 'package:flutlab/Constants/text.dart';
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
                          Text("Nike Blazer Mid '77 ", style: titleTextStyle),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text(
                            "79.0",
                            style: titleTextStyle,
                          ),
                          Text(
                            "99.0",
                            style: normalTextSyle,
                          ),
                          //TODO linetrough
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ShoesSizes(),
                          ShoesSizes(),
                          ShoesSizes(),
                          ShoesSizes(),
                          ShoesSizes(),
                          ShoesSizes(),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        aboutNikeShoes,
                        style: normalTextSyle,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Row(
                        children: [
                          Text(
                            "Read more",
                            style: readMore,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        children: [
                          Text(
                            "Reviews:",
                            style: reviewsTextStyle,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 20,
            right: 20,
            bottom: 20,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      shape: BoxShape.rectangle,
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.redAccent, Colors.orange]),
                    ),
                    child: Center(
                      child: TextButton(
                          onPressed: () {},
                          child:
                              Text("Add to cart", style: containerTextStyle)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

floatAction() {}

class ShoesSizes extends StatelessWidget {
  const ShoesSizes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 30,
      backgroundColor: Colors.grey.withOpacity(0.1),
      child: Text("25"),
    );
  }
}
