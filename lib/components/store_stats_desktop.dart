import 'package:flutter/material.dart';

class RevenueStoreCardDesktop extends StatelessWidget {
  const RevenueStoreCardDesktop({
    Key? key,
    required Size size,
    required this.title,
    required this.subtitle,
    required this.subtitleStyle,
  })  : _size = size,
        super(key: key);

  final Size _size;
  final title;
  final subtitle;
  final subtitleStyle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(),
          Text(
            subtitle,
            style: subtitleStyle,
          ),
        ],
      ),
    );
  }
}
