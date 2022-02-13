import 'package:flutter/material.dart';

class PerspectiveProductContainer extends StatefulWidget {
  final int value;

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
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                  color: isTapped ? Colors.grey : Colors.white, width: 2),
              color: Colors.white),
          child: Center(
            child: Text(
              "${widget.value}",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
