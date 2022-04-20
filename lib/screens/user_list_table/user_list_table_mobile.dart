import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

import '../../components/customer_invoice_component.dart';
import '../../components/invoice_list_header_label.dart';
import '../../components/search_field_component.dart';

class UserListTableMobile extends StatefulWidget {
  const UserListTableMobile({Key? key}) : super(key: key);

  @override
  State<UserListTableMobile> createState() => _UserListTableMobileState();
}

class _UserListTableMobileState extends State<UserListTableMobile> {
  @override
  Widget build(BuildContext context) {
    bool isChecked = false;

    return Scaffold(
      backgroundColor: Color(0xff2E4154),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
          onTap: () {},
          child: SizedBox(
            child: Image.asset(
              "assets/images/menu.png",
              width: 15,
              height: 15,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SearchFieldComponent(),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 640,
              width: MediaQuery.of(context).size.width / 1.05,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text(
                          'Manage Customers',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/filter.png',
                          height: 25,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Filter Invoices',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          Text(
                            'Creditor',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'All',
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 13,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'User',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'All',
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 13,
                            ),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.black54,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Invoice Date',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            '02/02/2022',
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 13,
                            ),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.black54,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Container(
                          height: 40,
                          width: MediaQuery.of(context).size.width / 4.0,
                          decoration: BoxDecoration(
                            color: Color(0xff7161EF),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text(
                              'Apply Filter',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Center(
                          child: Text(
                            'Save Filter',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        Spacer(),
                        Image.asset('assets/images/qr.png', height: 30),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        children: [
                          Container(
                            height: 40,
                            width: MediaQuery.of(context).size.width / 4.0,
                            decoration: BoxDecoration(
                              color: Color(0xff3A1772),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: Text(
                                'Draft',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Center(
                            child: Text(
                              'Awaiting Approval',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Center(
                            child: Text(
                              'Unpaid',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Center(
                            child: Text(
                              'Paid',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Center(
                            child: Text(
                              'All',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 4.0,
                            height: 45,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Search by invoices no.',
                                hintStyle: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 12,
                                ),
                                border: InputBorder.none,
                                suffixIcon: Image.asset(
                                  'assets/images/search.png',
                                  scale: 1.5,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 15,
                            height: 15,
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
                          InvoiceListHeaderLabel(),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomerInvoiceComponent(
                    amount: '\$ 1,000.00',
                    date: '02/02/2022',
                    invoiceNo: '0001224556',
                    product: 'Skin Care',
                    discoveryServices: 'Facial Discovery',
                    creditor: 'David Thum',
                    categoryTicket: '5',
                    balance: '\$1,500.00',
                    dueDate: '05/04/2022',
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CustomerInvoiceComponent(
                    amount: '\$ 1,000.00',
                    date: '02/02/2022',
                    invoiceNo: '0001224556',
                    product: 'Skin Care',
                    discoveryServices: 'Facial Discovery',
                    creditor: 'David Thum',
                    categoryTicket: '5',
                    balance: '\$1,500.00',
                    dueDate: '05/04/2022',
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CustomerInvoiceComponent(
                    amount: '\$ 1,000.00',
                    date: '02/02/2022',
                    invoiceNo: '0001224556',
                    product: 'Skin Care',
                    discoveryServices: 'Facial Discovery',
                    creditor: 'David Thum',
                    categoryTicket: '5',
                    balance: '\$1,500.00',
                    dueDate: '05/04/2022',
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CustomerInvoiceComponent(
                    amount: '\$ 1,000.00',
                    date: '02/02/2022',
                    invoiceNo: '0001224556',
                    product: 'Skin Care',
                    discoveryServices: 'Facial Discovery',
                    creditor: 'David Thum',
                    categoryTicket: '5',
                    balance: '\$1,500.00',
                    dueDate: '05/04/2022',
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CustomerInvoiceComponent(
                    amount: '\$ 1,000.00',
                    date: '02/02/2022',
                    invoiceNo: '0001224556',
                    product: 'Skin Care',
                    discoveryServices: 'Facial Discovery',
                    creditor: 'David Thum',
                    categoryTicket: '5',
                    balance: '\$1,500.00',
                    dueDate: '05/04/2022',
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CustomerInvoiceComponent(
                    amount: '\$ 1,000.00',
                    date: '02/02/2022',
                    invoiceNo: '0001224556',
                    product: 'Skin Care',
                    discoveryServices: 'Facial Discovery',
                    creditor: 'David Thum',
                    categoryTicket: '5',
                    balance: '\$1,500.00',
                    dueDate: '05/04/2022',
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CustomerInvoiceComponent(
                    amount: '\$ 1,000.00',
                    date: '02/02/2022',
                    invoiceNo: '0001224556',
                    product: 'Skin Care',
                    discoveryServices: 'Facial Discovery',
                    creditor: 'David Thum',
                    categoryTicket: '5',
                    balance: '\$1,500.00',
                    dueDate: '05/04/2022',
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Showing 1 to 10 of 10 entries',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                        Spacer(),
                        Text(
                          'Previous',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xff3A1772),
                          ),
                          child: Center(
                            child: Text(
                              '1',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          'Next',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
