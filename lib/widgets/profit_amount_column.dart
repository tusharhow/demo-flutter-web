import 'package:flutter/material.dart';

class ProfitAmountColumn extends StatelessWidget {
  const ProfitAmountColumn(
      {Key? key,
      required this.icon,
      required this.title,
      required this.amount,
      required this.titleStyle})
      : super(key: key);
  final icon;
  final title;
  final amount;
  final titleStyle;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            icon,
            width: 80,
          ),
          Text(
            title,
            style: TextStyle(
              color: titleStyle,
              fontSize: 13,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            amount,
            style: TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}