import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class CustomerInvoiceComponentDesktop extends StatefulWidget {
  CustomerInvoiceComponentDesktop({
    Key? key,
    required this.date,
    required this.invoiceNo,
    required this.product,
    required this.discoveryServices,
    required this.creditor,
    required this.amount,
    required this.balance,
    required this.dueDate,
    required this.categoryTicket,
  }) : super(key: key);
  final date;
  final invoiceNo;
  final product;
  final discoveryServices;
  final creditor;
  final categoryTicket;
  final amount;
  final balance;
  final dueDate;
  @override
  State<CustomerInvoiceComponentDesktop> createState() =>
      _CustomerInvoiceComponentState();
}

class _CustomerInvoiceComponentState
    extends State<CustomerInvoiceComponentDesktop> {
  @override
  Widget build(BuildContext context) {
    bool isChecked = false;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          SizedBox(
            width: 20,
            height: 20,
            child: GFCheckbox(
              size: GFSize.SMALL,
              activeBgColor: GFColors.DANGER,
              onChanged: (value) {
                setState(() {
                  isChecked = value;
                });
              },
              value: isChecked,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            widget.date,
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            widget.invoiceNo,
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            widget.product,
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            widget.discoveryServices,
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            widget.creditor,
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            widget.categoryTicket,
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            widget.amount,
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            widget.balance,
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            widget.dueDate,
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
