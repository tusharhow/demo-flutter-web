
import 'package:flutter/material.dart';

import '../../components/default_textformfield.dart';
import '../../components/quantity_card.dart';
import '../../components/quantity_packages_row.dart';
import '../../components/side_menu_bar.dart';
import '../../components/top_nav_bar.dart';
import '../../responsive/responsive_layout.dart';
import '../../widgets/about_product_dropdown.dart';
import '../../widgets/about_product_input_field.dart';
import '../../widgets/profit_amount_column.dart';
import 'individual_product_mobile.dart';

class IndiviDualProductDesktop extends StatelessWidget {
  const IndiviDualProductDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    List<Widget> _quantity = [
      QuantityPackagesRow(
        amount: '',
        containerText: '50',
        containerTitle: '',
        containerColor: Colors.indigo,
      ),
      QuantityPackagesRow(
        amount: '',
        containerText: '56',
        containerTitle: '',
        containerColor: Colors.orange,
      ),
      QuantityPackagesRow(
        amount: '',
        containerText: '100',
        containerTitle: '',
        containerColor: Colors.redAccent,
      ),
      QuantityPackagesRow(
        amount: '',
        containerText: '25',
        containerTitle: '',
        containerColor: Colors.blue,
      ),
      QuantityPackagesRow(
        amount: '',
        containerText: '10',
        containerTitle: '',
        containerColor: Colors.orange,
      ),
      QuantityPackagesRow(
        amount: '',
        containerText: '69',
        containerTitle: '',
        containerColor: Colors.green,
      ),
    ];
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
                height: _size.height * 0.8,
                width: _size.width * 0.6,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 5,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 20),
                        child: Row(
                          children: [
                            Text(
                              'About Product',
                              style: TextStyle(
                                fontSize: _size.width * 0.01,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: _size.height * 0.02,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 135),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Category Name',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                              ),
                            ),
                            Text(
                              'Product Name',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          AboutProductDropdown(hint: 'Select Category'),
                          AboutProductDropdown(hint: 'Product Name'),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      AboutProductInputField(
                          label: 'Regular Price Value', hint: '\$500'),
                      SizedBox(
                        height: 15,
                      ),
                      AboutProductInputField(
                          label: 'Prices in promotions', hint: '\$400'),
                      SizedBox(
                        height: 15,
                      ),
                      AboutProductInputField(
                          label: 'Valid Date', hint: '2021-11-18'),
                      SizedBox(
                        height: 15,
                      ),
                      AboutProductInputField(
                          label: 'Until Date', hint: '2021-11-18'),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Quantity Put Up For Sale',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 13,
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Icon(
                              Icons.keyboard_arrow_left,
                              color: Colors.black,
                            ),
                            Image.asset(
                              "assets/images/right.png",
                              width: 20,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            QuantityCard(
                              containerColor: Color(0xffFF934F),
                              containerText: '50',
                            ),
                            QuantityCard(
                              containerColor: Color(0xff7161EF),
                              containerText: '100',
                            ),
                            QuantityCard(
                              containerColor: Color(0xff66101F),
                              containerText: '150',
                            ),
                            QuantityCard(
                              containerColor: Color(0xff2FD87B),
                              containerText: '200',
                            ),
                            QuantityCard(
                              containerColor: Color(0xff3A1772),
                              containerText: '250',
                            ),
                            QuantityCard(
                              containerColor: Color(0xffD741A7),
                              containerText: '300',
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'The Profit Amount You Will Get',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 13,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 25,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ProfitAmountColumn(
                              icon: "assets/images/price.png",
                              title: 'Promotion Price',
                              amount: '\$400',
                              titleStyle: Color(0xff7CC8F4),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            ProfitAmountColumn(
                              icon: "assets/images/packages.png",
                              title: 'Quantity of Packages',
                              amount: '\$400',
                              titleStyle: Color(0xff7161EF),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            ProfitAmountColumn(
                              icon: "assets/images/set.png",
                              title: 'Belle Beauty Commission',
                              amount: '\$400',
                              titleStyle: Color(0xffFF934F),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            ProfitAmountColumn(
                              icon: "assets/images/profit.png",
                              title: 'Belle Beauty Commission',
                              amount: '\$400',
                              titleStyle: Color(0xffFF934F),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width / 5,
                        decoration: BoxDecoration(
                          color: Color(0xff3A1772),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            'Next',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ])
      ]),
    );
  }
}

