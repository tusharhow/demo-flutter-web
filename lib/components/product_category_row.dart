import 'package:flutter/material.dart';

class ProductCategoryRow extends StatelessWidget {
  const ProductCategoryRow({
    Key? key,
    required this.amount,
    required this.label,
  }) : super(key: key);
  final label;
  final amount;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Container(
            height: 6,
            width: 6,
            decoration: BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            label,
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(),
          Container(
            height: 33,
            width: MediaQuery.of(context).size.width / 6,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Color(0xff2FD87B),
                width: 1,
              ),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Center(
              child: Text(
                amount,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                ),
              ),
            ),
          ),
          Spacer(),
          Image.asset(
            "assets/images/edit.png",
          ),
          Image.asset(
            "assets/images/delete.png",
          ),
        ],
      ),
    );
  }
}