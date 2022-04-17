import 'package:flutter/material.dart';

class QuantityCard extends StatelessWidget {
  const QuantityCard({
    Key? key,
    required this.containerText,
    required this.containerColor,
  }) : super(key: key);
  final containerText;
  final containerColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      width: MediaQuery.of(context).size.width / 12,
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: Text(
          containerText,
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
