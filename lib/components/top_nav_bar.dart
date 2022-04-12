import 'package:flutter/material.dart';

class TopNavBar extends StatelessWidget {
  const TopNavBar({
    Key? key,
    required Size size,
  }) : _size = size, super(key: key);

  final Size _size;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 20,
        left: _size.width * 0.75,
        child: Row(
          children: [
            Image.asset(
              'assets/images/uk.png',
              width: _size.width * 0.02,
              height: _size.height * 0.02,
            ),
            SizedBox(
              width: 5,
            ),
            Image.asset(
              'assets/images/noti.png',
              width: _size.width * 0.03,
              height: _size.height * 0.03,
            ),
            SizedBox(
              width: 5,
            ),
            Image.asset(
              'assets/images/mess.png',
              width: _size.width * 0.03,
              height: _size.height * 0.03,
            ),
            SizedBox(
              width: 5,
            ),
            Image.asset(
              'assets/images/user.png',
              width: _size.width * 0.03,
              height: _size.height * 0.03,
            ),
            Text(
              'Tushar Mahmud',
              style: TextStyle(
                fontSize: _size.width * 0.01,
              ),
            ),
          ],
        ));
  }
}