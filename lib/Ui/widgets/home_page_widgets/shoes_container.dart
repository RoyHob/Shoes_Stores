
import 'package:flutlab/Constants/color.dart';
import 'package:flutter/material.dart';

class ShoesContainer extends StatefulWidget {
  
final String value;
  const ShoesContainer({Key? key, required this.value}) : super(key: key);

  @override
  _ShoesContainerState createState() => _ShoesContainerState();
}

class _ShoesContainerState extends State<ShoesContainer> {
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.5),
      child: GestureDetector(
        onTap: () {
          setState(() {
            isTapped = !isTapped;
          });
        },
        child: Container(
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                  color: isTapped
                      ? orangeColor
                      : greyColor.withOpacity(
                          0.3,
                        ),
                  width:isTapped?3: 1),
              color: whiteColor),
          child: Center(
            child: CircleAvatar(
              radius: 30,
              backgroundImage:  ExactAssetImage('${widget.value}'),
          ),
        ),
      ),
    ),
    );
  }
}