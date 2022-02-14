import 'package:flutlab/Constants/color.dart';
import 'package:flutlab/Constants/style.dart';
import 'package:flutlab/Ui/app.dart';
import 'package:flutlab/Ui/widgets/home_page_widgets/shoes_container.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

List<String> shoesList = [
  'lib/assets/product_blazeryr/blazer_1.jpg',
  'lib/assets/product_blazeryr/blazer_2.jpg',
  'lib/assets/product_blazeryr/blazer_3.jpg',
  'lib/assets/product_blazeryr/blazer_4.jpg',
  'lib/assets/product_blazeryr/blazer_5.jpg',
];
const List<String> shoes_list = [
  "!",
  "@",
  "&",
  "%",
  "*",
  "^",
  "!",
  "@",
  "&",
  "%",
  "*",
  "^",
];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyColor.withOpacity(0.1),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(colors: [
            Colors.green,
            Colors.green,
            Colors.green
          ]),
        ),
        child: FloatingActionButton(
          heroTag: "shop",
          onPressed: () {},
          child: Container(
              //TODO make sure for the gradient;
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Colors.green,
                Colors.green,
                Colors.green
              ])),
              child: Icon(Icons.backpack)),
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(25),
          topLeft: Radius.circular(25),
        ),
        child: BottomNavigationBar(
          elevation: 10,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          //?Remove label
          items: [
            BottomNavigationBarItem(
              label: "",
              icon: Icon(
                Icons.home_outlined,
                color: blackColor,
              ),
            ),
            BottomNavigationBarItem(
              label: "",
              icon: Icon(
                Icons.search_outlined,
                color: blackColor,
              ),
            ),
            BottomNavigationBarItem(
              label: "",
              icon: Icon(
                Icons.favorite_outline,
                color: blackColor,
              ),
            ),
            BottomNavigationBarItem(
              label: "",
              icon: Icon(
                Icons.person_outlined,
                color: blackColor,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 40),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 120,
                    decoration: BoxDecoration(
                      // TODO: image: ,
                      borderRadius: BorderRadius.circular(15),
                      gradient: primarygradient,
                      color: Colors.orange,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "New Arrivals",
                          style: containerTextStyle,
                        ),
                        Text(
                          "Summer 2021",
                          style: containerTextStyle,
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
              child: ListView.builder(itemCount: shoesList.length, scrollDirection: Axis.horizontal, itemBuilder: (context, index) => ShoesContainer(value: shoesList[index])),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text("Nike Blazer", style: homePagetitleTextStyle),
                Spacer(),
                Text("43 items", style: homePageAddtotitleTexStyle),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(color: greyColor.withOpacity(0.2), shape: BoxShape.circle),
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
              child: Expanded(
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 12,
                    crossAxisSpacing: 12,
                  ),
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed(productDetails);
                      },
                      child: ShoesInGridView(
                        color: orangeColor,
                        child: Container(
                          child: Center(
                            child: Text("image"),
                          ),
                        ),
                      ),
                    ),
                    ShoesInGridView(
                      color: greyColor,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            children: [
                              Text("Nike Blazer Mid '77")
                            ],
                          ),
                          Row(
                            children: [
                              Text("79.0"),
                              Spacer(),
                              //TODO: element switcher ;
                            ],
                          ),
                        ],
                      ),
                    ),
                    ShoesInGridView(
                      color: blackColor,
                    ),
                    ShoesInGridView(
                      color: orangeColor,
                    ),
                  ],
                ),
              ),
            )
            // GridView.count(
            //   crossAxisCount: 2,
            //   children: [
            //     Container(child: Text("ghd"),)
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}

class ShoesInGridView extends StatelessWidget {
  final color;
  final child;
  const ShoesInGridView({Key? key, this.color, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(30.0),
      ),
    );
  }
}
