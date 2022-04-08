import 'package:flutter/material.dart';

class DefaultContainer extends StatelessWidget {
  const DefaultContainer({
    Key? key,
    required this.label,
  }) : super(key: key);
  final label;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: MediaQuery.of(context).size.width / 1.15,
      color: Color(0xff7CC8F4),
      child: Center(
        child: Text(
          label,
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}