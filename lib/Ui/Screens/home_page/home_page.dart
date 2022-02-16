import 'package:flutlab/Constants/color.dart';
import 'package:flutlab/Constants/data.dart';
import 'package:flutlab/Constants/style.dart';
import 'package:flutlab/Ui/app.dart';
import 'package:flutlab/Ui/Screens/home_page/widgets/shoes_container.dart';
import 'package:flutlab/Ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyColor.withOpacity(0.1),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: orangeColor,
        heroTag: "shop",
        onPressed: () {},
        child: Icon(
          Icons.shopping_bag_outlined,
          color: whiteColor,
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(35),
          topLeft: Radius.circular(35),
        ),
        child: BottomAppBar(
          elevation: 10,
          notchMargin: 17,
          shape: CircularNotchedRectangle(),
          child: Container(
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.home_outlined),
                Icon(Icons.search),
                Icon(Icons.favorite_border),
                Icon(
                  Icons.person_outlined,
                ),
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 120,
                      decoration: BoxDecoration(
                        // image: DecorationImage(image: ExactAssetImage('lib/assets/nike_logo/nike_logo.jpg'), fit: BoxFit.fill,),
                        boxShadow: [
                          shadow(),
                        ],
                        borderRadius: BorderRadius.circular(15),
                        gradient: primarygradient,
                        color: orangeColor,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "New Arrivals",
                            style: containerSecondaryTextStyle,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Summer 2021",
                            style: containerPrimaryText,
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
              SizedBox(
                height: 100,
                child: ListView.builder(
                    itemCount: shoes_list.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) =>
                        ShoesContainer(value: shoes_list[index])),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text("Nike Blazer", style: homePagetitleText),
                  Spacer(),
                  Text("43 items", style: homePageAddtotitleText),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        color: greyColor.withOpacity(0.4),
                        shape: BoxShape.circle),
                    child: Icon(
                      Icons.wifi,
                      size: 20,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: GridView(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 12,
                    crossAxisSpacing: 12,
                    childAspectRatio: 0.85,
                  ),
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(
                        // "lib/assets/product_blazer/blazer_1.jpg",
                        "lib/assets/nike_shoes_list/nike_1.jpg",
                      ),
                    ),
                    ShoesInGridView(
                      image: "lib/assets/nike_shoes_list/nike_5.jpg",
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed(productDetails);
                      },
                      child: ShoesInGridView(
                        image: "lib/assets/nike_shoes_list/nike_9.jpg",
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Container(
                        child: FittedBox(
                          clipBehavior: Clip.antiAlias,
                          fit: BoxFit.fill,
                          child: Image.asset(
                            "lib/assets/product_blazer/blazer_2.jpg",
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  
}

class ShoesInGridView extends StatefulWidget {
  final String image;

  const ShoesInGridView({
    required this.image,
    Key? key,
  }) : super(key: key);

  @override
  State<ShoesInGridView> createState() => _ShoesInGridViewState();
}

class _ShoesInGridViewState extends State<ShoesInGridView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: greyColor.withOpacity(0.2),
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Container(
              width: 250,
              height: 180,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset("${widget.image}"),
              ),
            ),
            Row(
              children: [
                Text(
                  "Nike Blazer Mid '77",
                  style: containerTitleText,
                ),
              ],
            ),
            Row(
              children: [
                Row(children: [
                  Text(
                    "\$79,0",
                    style: containerTitleText,
                  )
                ]),
                SizedBox(
                  width: 100,
                ),
                ColorSwitcher(color: yellowColor,),
                ColorSwitcher(color: greenColor,),
              ],
            )
          ],
        ),
      ),
    );
  }
}
