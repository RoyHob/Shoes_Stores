import 'package:flutlab/Constants/color.dart';
import 'package:flutlab/Constants/style.dart';
import 'package:flutlab/Constants/text.dart';
import 'package:flutlab/Ui/widgets/product_details_widgets.dart/perspective_product_container.dart';
import 'package:flutlab/Ui/widgets/product_details_widgets.dart/size_product_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:readmore/readmore.dart';

class ProductDetails extends StatefulWidget {
  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

bool favoritePressed = true;

const List<int> product_list = [
  34,
  35,
  36,
  37,
  38,
  39,
  40,
  41,
  42,
  43,
  44,
];

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyColor.withOpacity(0.1),
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
                  heroTag: "back",
                  backgroundColor: whiteColor,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(90),
                  ),
                  child: Icon(
                    Icons.chevron_left_sharp,
                    size: 40,
                    color: blackColor,
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
                  heroTag: "favorite",
                  backgroundColor: whiteColor,
                  onPressed: () {
                    setState(() {
                      favoritePressed = !favoritePressed;
                    });
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(90),
                  ),
                  child: favoritePressed
                      ? Icon(
                          Icons.favorite_border_outlined,
                          size: 30,
                          color: blackColor,
                        )
                      : Icon(
                          Icons.favorite,
                          size: 30,
                          color: orangeColor,
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
            left: 0,
            right: 0,
            top: 70,
            child: Column(
              children: [
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    //TODO: put the images and the seletor ;
                    itemCount: product_list.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, int index) =>
                        PerspectiveProductContainer(value: product_list[index]),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: SizedBox(
              height: 500,
              child: Container(
                decoration: BoxDecoration(
                  color: whiteColor,
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
                      SizedBox(
                        height: 50,
                        child: ListView.builder(
                          itemCount: product_list.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, int index) =>
                              SizeProductContainer(value: product_list[index]),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ReadMoreText(
                        aboutNikeShoes,
                        style: normalTextSyle,
                        trimMode: TrimMode.Line,
                        trimLines: 2,
                        trimExpandedText: "Read less",
                        trimCollapsedText: "Read more",
                        lessStyle: readMore,
                        moreStyle: readMore,
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
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Spacer(),
                          RatingBar.builder(
                            glowColor: orangeColor,
                            itemSize: 30,
                            initialRating: 3,
                            minRating: 2,
                            itemBuilder: (context, _) =>
                                Icon(Icons.star, color: orangeColor),
                            onRatingUpdate: (rating) {},
                          ),
                          Icon(Icons.arrow_drop_down)
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
            child: GestureDetector(
              onTap: () {
                print("added to cart");
              },
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          shape: BoxShape.rectangle,
                          gradient: primarygradient),
                      child: Center(
                        child: Text("Add to cart", style: containerTextStyle),
                      ),
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
