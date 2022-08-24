import 'package:flutter/material.dart';

class GlobalShadow extends StatelessWidget {
  Widget child;

  GlobalShadow({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(11),
        color: Colors.white,
        boxShadow: const <BoxShadow>[
          BoxShadow(
              color: Color.fromRGBO(0, 0, 0, .25),
              spreadRadius: 0,
              blurRadius: 4,
              offset: Offset(0, 4))
        ],
      ),
      child: child,
    );
  }
}
