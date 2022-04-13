import 'package:flutter/material.dart';

class SidebarMenuRowMobile extends StatelessWidget {
  SidebarMenuRowMobile({
    Key? key,
    required Size size,
    required this.title,
    required this.icon,
    required this.onTap,
  })  : _size = size,
        super(key: key);

  final Size _size;
  final icon;
  final title;
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Image.asset(
            icon,
            width: _size.width * 0.07,
            height: _size.height * 0.07,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: _size.width * 0.02,
            ),
          ),
        ],
      ),
    );
  }
}
