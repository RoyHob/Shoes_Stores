import 'package:flutlab/Constants/color.dart';
import 'package:flutter/material.dart';

class SizeProductContainer extends StatefulWidget {
  final int value;

  const SizeProductContainer({Key? key, required this.value}) : super(key: key);

  @override
  _SizeProductContainerState createState() => _SizeProductContainerState();
}

class _SizeProductContainerState extends State<SizeProductContainer> {
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.5),
      child: GestureDetector(
        onTap: () {
          setState(() {
            isTapped = !isTapped;
             isTapped ?ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(" Size ${widget.value} selected "),
                duration: Duration(milliseconds: 500),
              ),
            // ignore: unnecessary_statements
            ):null;
          });
        },
        child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                  color: isTapped
                      ? orangeColor
                      : greyColor.withOpacity(
                          0.3,
                        ),
                  width: 2),
              color: whiteColor),
          child: Center(
            child: Text(
              "${widget.value}",
              style:
                  TextStyle(color: blackColor, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
