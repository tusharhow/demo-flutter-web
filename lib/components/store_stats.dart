import 'package:flutter/material.dart';

class StoreStats extends StatelessWidget {
  const StoreStats({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.subtitleStyle,
  }) : super(key: key);
  final title;
  final subtitle;
  final subtitleStyle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(),
          Text(subtitle, style: subtitleStyle),
        ],
      ),
    );
  }
}
