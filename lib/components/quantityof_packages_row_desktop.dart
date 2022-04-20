import 'package:flutter/material.dart';

class QuantityOfPackagesRowDesktop extends StatelessWidget {
  QuantityOfPackagesRowDesktop(
      {Key? key,
      required this.containerColor,
      required this.containerText,
      required this.containerTitle,
      required this.amount})
      : super(key: key);
  final containerColor;
  final containerText;
  final containerTitle;
  final amount;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 75,
                width: MediaQuery.of(context).size.width / 18,
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
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    containerTitle,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    amount,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
