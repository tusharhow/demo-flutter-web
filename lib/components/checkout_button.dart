import 'package:flutter/material.dart';

class CheckOutButton extends StatelessWidget {
  const CheckOutButton({
    Key? key,
    required Size size,
    required this.firstTitle,
    required this.secondTitle,
  })  : _size = size,
        super(key: key);

  final Size _size;
  final firstTitle;
  final secondTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            height: 45,
            width: _size.width / 3.5,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 1,
              ),
            ),
            child: Center(
              child: Text(firstTitle,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                  )),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            height: 45,
            width: _size.width / 3.5,
            decoration: BoxDecoration(
              color: Colors.black,
            ),
            child: Center(
              child: Text(secondTitle,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}