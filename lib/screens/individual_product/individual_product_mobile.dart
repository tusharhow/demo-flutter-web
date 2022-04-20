import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import '../../components/event_banner.dart';
import '../../components/quantity_packages_row.dart';
import '../../components/search_field_component.dart';
import '../../widgets/about_product_dropdown.dart';
import '../../widgets/about_product_input_field.dart';
import '../../widgets/profit_amount_column.dart';

class IndiviDualProductMobile extends StatefulWidget {
  const IndiviDualProductMobile({Key? key}) : super(key: key);

  @override
  State<IndiviDualProductMobile> createState() =>
      _IndiviDualProductMobileState();
}

String? dropdown;

class _IndiviDualProductMobileState extends State<IndiviDualProductMobile> {
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2E4154),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SearchFieldComponent(),
            SizedBox(
              height: 30,
            ),
            EventBanner(
              title: 'View a Product',
              img: "assets/images/view.png",
              desc:
                  'Take advantage of the Belle beauté store to display\nyour range of products that you have in store! Receive\norders via your customer area and ship your products by post.',
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset(
              "assets/images/tuts.png",
              width: MediaQuery.of(context).size.width / 1.05,
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20),
              child: Row(
                children: [
                  Text(
                    'Quantity Of Packages',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            QuantityPackagesRow(
              amount: '\$252',
              containerText: '50',
              containerTitle: 'Receive a royalty from Belle\nBeauté of',
              containerColor: Colors.orange,
            ),
            SizedBox(
              height: 10,
            ),
            QuantityPackagesRow(
              amount: '\$504',
              containerText: '100',
              containerTitle: 'Receive a royalty from Belle\nBeauté of',
              containerColor: Colors.indigo,
            ),
            SizedBox(
              height: 10,
            ),
            QuantityPackagesRow(
              amount: '\$756',
              containerText: '150',
              containerTitle: 'Receive a royalty from Belle\nBeauté of',
              containerColor: Colors.cyanAccent,
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 1.3,
              width: MediaQuery.of(context).size.width / 1.05,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 20),
                    child: Row(
                      children: [
                        Text(
                          'About Product',
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
                  SizedBox(
                    height: 230,
                    child: GridView.builder(
                        itemCount: _quantity.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3),
                        itemBuilder: (context, index) {
                          return _quantity[index];
                        }),
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
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
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
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width / 3.5,
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
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}