import 'package:flutter/material.dart';
import 'package:getwidget/components/checkbox/gf_checkbox.dart';
import 'package:getwidget/getwidget.dart';

import '../components/event_banner.dart';
import '../components/product_category_dropdown.dart';
import '../components/product_category_row.dart';
import '../components/quantity_packages_row.dart';
import '../components/search_field_component.dart';

class AddProductPage extends StatefulWidget {
  const AddProductPage({Key? key}) : super(key: key);

  @override
  State<AddProductPage> createState() => _AddProductPageState();
}

bool _isChecked = false;
String? dropdown;

class _AddProductPageState extends State<AddProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2E4154),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: SizedBox(
          child: Image.asset(
            "assets/images/menu.png",
            width: 15,
            height: 15,
            color: Colors.white,
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
          EventBanner(
              title: 'Create an Event',
              img: "assets/images/banner.png",
              desc: 'Discovery tickets are ideal for building the loyalty of\nyour new customers. Invite your new customer\nseveral times to your business and thereby create a\nbuying habit with it.',
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
                    'Upload a Photo',
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
            Image.asset(
              "assets/images/upload.png",
              color: Colors.white54,
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                'Drop a file here or click to download',
                style: TextStyle(
                  color: Colors.white54,
                  fontSize: 15,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                'Maximum upload size: 516MB',
                style: TextStyle(
                  color: Colors.white24,
                  fontSize: 13,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                'Please add a photo of your business! We \nsuggest that you post a photo of your\n business reception or the Outer Banner.\n Beautiful Beauty does not accept photos \nthat do not represent your business.',
                style: TextStyle(
                  color: Colors.white54,
                  fontSize: 12,
                ),
                textAlign: TextAlign.center,
              ),
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
              height: MediaQuery.of(context).size.height * 1.8,
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
                          'Product Category',
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
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Text(
                          'Please choose a maximum of 8 discovery\nservices as wellas 8 paid services (added).',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Image.asset(
                          "assets/images/massages.png",
                          width: 50,
                        ),
                      ),
                      Text(
                        'Aesthetics - Hairdressing - Massage Therapy',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text(
                          'Category Name',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Text(
                          'Price',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Paid Service',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Text(
                          'Price',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
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
                        SizedBox(
                          width: 25,
                          height: 25,
                          child: GFCheckbox(
                            onChanged: (value) {
                              setState(() {
                                _isChecked = value;
                              });
                            },
                            value: _isChecked,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Image.asset(
                          "assets/images/skin.png",
                          width: 50,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Skin Care',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'View Discovery Services',
                              style: TextStyle(
                                color: Color(0xff7161EF),
                                fontSize: 11,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ProductCategoryRow(
                    label: 'Facial discovery (30 min)',
                    amount: '\$900',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ProductCategoryRow(
                    label: 'Facial discovery (30 min)',
                    amount: '\$900',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ProductCategoryRow(
                    label: 'Facial discovery (30 min)',
                    amount: '\$900',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ProductCategoryRow(
                    label: 'Facial discovery (30 min)',
                    amount: '\$900',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/care.png",
                          width: 50,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Body Care',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'View Discovery Services',
                              style: TextStyle(
                                color: Color(0xff7161EF),
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  ProductCategoryDropdown(),
                  ProductCategoryDropdown(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 25,
                          height: 25,
                          child: GFCheckbox(
                            onChanged: (value) {
                              setState(() {
                                _isChecked = value;
                              });
                            },
                            value: _isChecked,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Image.asset(
                          "assets/images/peeling.png",
                          width: 50,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '1 Peeling Treatment',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'View Discovery Services',
                              style: TextStyle(
                                color: Color(0xff7161EF),
                                fontSize: 11,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  ProductCategoryDropdown(),
                  ProductCategoryDropdown(),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 25,
                          height: 25,
                          child: GFCheckbox(
                            onChanged: (value) {
                              setState(() {
                                _isChecked = value;
                              });
                            },
                            value: _isChecked,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Image.asset(
                          "assets/images/removal.png",
                          width: 50,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hair Removal',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'View Discovery Services',
                              style: TextStyle(
                                color: Color(0xff7161EF),
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  ProductCategoryDropdown(),
                  ProductCategoryDropdown(),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 25,
                          height: 25,
                          child: GFCheckbox(
                            onChanged: (value) {
                              setState(() {
                                _isChecked = value;
                              });
                            },
                            value: _isChecked,
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'I accept the general conditions of sale. \nLaunch a telephone campaign',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Add your signature',
                              style: TextStyle(
                                color: Color(0xff7CC8F4),
                                fontSize: 11,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width / 3,
                    decoration: BoxDecoration(
                      color: Color(0xff3A1772),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        'Preview',
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
                  Center(
                    child: Text(
                      'Save a Draft',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 15,
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
