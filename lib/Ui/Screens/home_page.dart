import 'package:flutlab/Constants/style.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: BottomNavigationBar(
      //   items: [
          
      //   ],
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Positioned(
                left: 0,
                right: 0,
                top: 0,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(45),
                    shape: BoxShape.rectangle,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("New Arrivals", style: containerTextStyle),
                      Text("Summer 2021", style: containerTextStyle),
                    ],
                  ),
                ),
              ),
              ListView(
                scrollDirection: Axis.horizontal,
                children: [],
              ),
              Row(
                children: [
                  Text("Nike Blazer"),
                  Spacer(),
                  Text("43 items"),
                  Icon(Icons.wifi),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
