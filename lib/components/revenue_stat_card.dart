import 'package:flutter/material.dart';

class RevenueStatCard extends StatelessWidget {
  RevenueStatCard({
    Key? key,
    required Size size,
    required this.title,
    required this.subtitle,
    required this.image,
    required this.cardColor,
    required this.titleTextStyle,
    required this.subtitleTextStyle,
    required this.onTap,
  })  : _size = size,
        super(key: key);

  final Size _size;
  final cardColor;
  final title;
  final subtitle;
  final image;
  final titleTextStyle;
  final subtitleTextStyle;
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 70,
        width: _size.width / 1.1,
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Image.asset(
                image,
                width: 45,
                height: 45,
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(title, style: titleTextStyle),
                  Text(subtitle, style: subtitleTextStyle),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
