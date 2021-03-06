import 'package:flutlab/Constants/color.dart';
import 'package:flutlab/Constants/style.dart';
import 'package:flutlab/Constants/data.dart';
import 'package:flutlab/Ui/Screens/product_details/widgets/perspective_product_container.dart';
import 'package:flutlab/Ui/Screens/product_details/widgets/size_product_container.dart';
import 'package:flutlab/Ui/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:readmore/readmore.dart';
import 'package:face_pile/face_pile.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({
    Key? key,
  }) : super(key: key);

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

bool favoritePressed = true;

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
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: ListView.builder(
                      
                      itemCount: productPerspectives.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, int index) =>
                          PerspectiveProductContainer(
                              value: productPerspectives[index]),
                    ),
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
                          Text("Nike Blazer Mid '77 ", style: titleText),
                          Spacer(),
                          ColorSwitcher(color: orangeColor),
                          SizedBox(
                            width: 10,
                          ),
                          ColorSwitcher(color: greyColor),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(text: "\$", style: superScriptText),
                                TextSpan(
                                  text: "79,0",
                                  style: titleText,
                                ),
                                TextSpan(
                                  text: "\$99.0",
                                  style: normalTextStyleLineTrough,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        height: 50,
                        child: ListView.builder(
                          itemCount: productListSize.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, int index) =>
                              SizeProductContainer(
                                  value: productListSize[index]),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ReadMoreText(
                        aboutNikeShoes,
                        style: normalText,
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
                            style: reviewsText,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          FacePile(
                            images: [
                              NetworkImage("https://www.google.com/url?sa=i&url=https%3A%2F%2Funsplash.com%2Fs%2Fphotos%2Fuser-profile&psig=AOvVaw1yMW2lDHtoCWdfowvT2Zps&ust=1645125632040000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCNCByt74hPYCFQAAAAAdAAAAABAD",scale: 1),
                              NetworkImage("https://www.google.com/url?sa=i&url=https%3A%2F%2Funsplash.com%2Fs%2Fphotos%2Fuser-profile&psig=AOvVaw1yMW2lDHtoCWdfowvT2Zps&ust=1645125632040000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCNCByt74hPYCFQAAAAAdAAAAABAD",scale:2),
                              NetworkImage("https://www.google.com/url?sa=i&url=https%3A%2F%2Funsplash.com%2Fs%2Fphotos%2Fuser-profile&psig=AOvVaw1yMW2lDHtoCWdfowvT2Zps&ust=1645125632040000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCNCByt74hPYCFQAAAAAdAAAAABAD",scale: 3),
                              NetworkImage("https://www.google.com/url?sa=i&url=https%3A%2F%2Funsplash.com%2Fs%2Fphotos%2Fuser-profile&psig=AOvVaw1yMW2lDHtoCWdfowvT2Zps&ust=1645125632040000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCNCByt74hPYCFQAAAAAdAAAAABAD",scale: 4)
                            ],
                            radius:25,
                            space: 40,
                            child: Text(
                              " +10",
                              style: homePageAddtotitleText,
                            ),
                          ),
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
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Item added to cart"),
                    duration: Duration(milliseconds: 500),
                  ),
                );
              },
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 70,
                      decoration: BoxDecoration(
                          boxShadow: [
                            shadow(),
                          ],
                          borderRadius: BorderRadius.circular(15),
                          shape: BoxShape.rectangle,
                          gradient: primarygradient),
                      child: Center(
                        child: Text("Add to cart", style: containerPrimaryText),
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
