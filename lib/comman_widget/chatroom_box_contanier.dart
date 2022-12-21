// This contanier is used in chatRoom Screen
// ContanierName is used to title
// color is used to title color

import 'package:flutter/material.dart';

class BoxContanier extends StatelessWidget {
  final Color colors;
  final String contanierName;

  const BoxContanier(
      {Key? key, required this.colors, required this.contanierName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: TextButton(
        onPressed: () {},
        child: Text(
          contanierName,
          style: TextStyle(color: colors),
        ),
      ),
    );
  }
}
