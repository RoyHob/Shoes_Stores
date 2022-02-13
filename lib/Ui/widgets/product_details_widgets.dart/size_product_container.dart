
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
          });
        },
        child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                  color: isTapped
                      ? Colors.orange
                      : Colors.grey.withOpacity(
                          0.3,
                        ),
                  width: 2),
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