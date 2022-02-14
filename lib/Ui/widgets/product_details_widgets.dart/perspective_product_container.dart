import 'package:flutlab/Constants/color.dart';
import 'package:flutter/material.dart';

class PerspectiveProductContainer extends StatefulWidget {
  final String value;

  const PerspectiveProductContainer({Key? key, required this.value})
      : super(key: key);

  @override
  _PerspectiveProductContainerState createState() =>
      _PerspectiveProductContainerState();
}

class _PerspectiveProductContainerState
    extends State<PerspectiveProductContainer> {
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
                  color: isTapped ? greyColor : whiteColor, width: 2),
              color: whiteColor),
          child: CircleAvatar(
            radius: 40,
            backgroundImage: ExactAssetImage('${widget.value}'),
          ),
        ),
      ),
    );
  }
}
