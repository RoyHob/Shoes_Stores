import 'package:flutlab/Constants/color.dart';
import 'package:flutlab/Constants/data.dart';
import 'package:flutlab/Constants/style.dart';
import 'package:flutlab/Ui/app.dart';
import 'package:flutlab/Ui/widgets/home_page_widgets/shoes_container.dart';
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
        backgroundColor: orangeColor, //TODO! put a gradient
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
        padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 120,
                    decoration: BoxDecoration(
                      //TODO!Add a nike image inside the container
                      // image: DecorationImage(image: ExactAssetImage('lib/assets/nike_logo/nike_logo.jpg'), fit: BoxFit.fill,),
                      boxShadow: [
                        BoxShadow(
                          color: greyColor.withOpacity(0.1),
                          spreadRadius: 4,
                          blurRadius: 10,
                          offset: Offset(0, 7), //
                        )
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
                        SizedBox(height: 5,),
                        Text(
                          "Summer 2021",
                          style:  containerPrimaryText ,
      
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
                    //TODO! grid view with different sizes 
                    ShoesInGridView(
                      color: greyColor,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            children: [Text("Nike Blazer Mid '77")],
                          ),
                          Row(
                            children: [
                              Text("79.0"),
                              Spacer(),
                              //TODO! element switcher the two circle ;
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
