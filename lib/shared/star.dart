import 'package:flutter/material.dart';

class Star extends StatelessWidget {
  double size;
  double horizontalPadding;
  bool empty;

  Star({Key? key, this.empty = false, required this.size, required this.horizontalPadding}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding,
          vertical: 0,
        ),
        child: Icon(
          Icons.star,
          color: empty
              ? const Color.fromRGBO(242, 242, 242, 1)
              : const Color.fromRGBO(255, 193, 74, 1.0),
          size: size,
        ));
  }
}