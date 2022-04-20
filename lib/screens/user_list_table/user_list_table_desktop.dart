import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

import '../../components/customer_invoice_component.dart';
import '../../components/customer_invoice_component_desktop.dart';
import '../../components/default_textformfield.dart';
import '../../components/invoice_list_header_label.dart';
import '../../components/quantity_packages_category_card_desktop.dart';
import '../../components/quantityof_packages_row_desktop.dart';
import '../../components/search_field_component.dart';
import '../../components/side_menu_bar.dart';
import '../../components/top_nav_bar.dart';
import '../../responsive/responsive_layout.dart';
import '../../widgets/product_category_widget_desktop.dart';

class UserListTableDesktop extends StatefulWidget {
  const UserListTableDesktop({Key? key}) : super(key: key);

  @override
  State<UserListTableDesktop> createState() => _UserListTableDesktopState();
}

class _UserListTableDesktopState extends State<UserListTableDesktop> {
  @override
  Widget build(BuildContext context) {
    bool isChecked = false;
    final _size = MediaQuery.of(context).size;
    return Material(
        child: Column(children: [
      Row(children: [
        Expanded(
            child: Row(children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                alignment: Alignment.centerLeft,
                child: Image.asset(
                  'assets/images/left.png',
                  width: _size.width * 0.3,
                  height: _size.height,
                ),
              ),
              SideMenuBar(size: _size),
              DefaultTextFormField(size: _size),
              if (!Responsive.isMobile(context)) TopNavBar(size: _size)
            ],
          ),
          Container(
            height: 640,
            width: MediaQuery.of(context).size.width / 2,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 20),
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
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Container(
                          height: 40,
                          width: MediaQuery.of(context).size.width / 9,
                          decoration: BoxDecoration(
                            color: Color(0xff7161EF),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text(
                              'Apply Filter',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
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
                              fontSize: 14,
                            ),
                          ),
                        ),
                        Spacer(),
                        Image.asset('assets/images/qr.png',
                            height: _size.height * 0.08),
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
                            width: MediaQuery.of(context).size.width / 9,
                            decoration: BoxDecoration(
                              color: Color(0xff3A1772),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: Text(
                                'Draft',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
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
                                fontSize: 14,
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
                                fontSize: 14,
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
                                fontSize: 14,
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
                                fontSize: 14,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 4.0,
                            height: 45,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Search by invoices no.',
                                hintStyle: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 14,
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
                  Padding(
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
                  SizedBox(
                    height: 20,
                  ),
                  CustomerInvoiceComponentDesktop(
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
                  CustomerInvoiceComponentDesktop(
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
                  CustomerInvoiceComponentDesktop(
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
                  CustomerInvoiceComponentDesktop(
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
                  CustomerInvoiceComponentDesktop(
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
                  CustomerInvoiceComponentDesktop(
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
                  CustomerInvoiceComponentDesktop(
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
          )
        ]))
      ])
    ]));
  }
}
