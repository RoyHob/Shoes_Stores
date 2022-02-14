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
                    width: isTapped ? 3 : 1),
                color: Colors.white),
            child: Center(
              child: Image.asset(
                'blazer_1.jpg',
              ),
            ),
          ),
        ));
  }
}
