import 'package:flutter/material.dart';

class InvoiceListHeaderLabel extends StatelessWidget {
  const InvoiceListHeaderLabel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Text(
            'Date',
            style: TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Image.asset(
            'assets/images/arr.png',
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            'Invoice No.',
            style: TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Image.asset(
            'assets/images/arr.png',
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            'Product',
            style: TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Image.asset(
            'assets/images/arr.png',
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            'Discovery Services',
            style: TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Image.asset(
            'assets/images/arr.png',
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            'Creditor',
            style: TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Image.asset(
            'assets/images/arr.png',
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            'Category Ticket',
            style: TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Image.asset(
            'assets/images/arr.png',
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            'Amount',
            style: TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Image.asset(
            'assets/images/arr.png',
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            'Balance',
            style: TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Image.asset(
            'assets/images/arr.png',
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            'Due Date',
            style: TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
