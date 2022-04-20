import 'package:flutter/material.dart';
import 'package:flutter_demo_web/components/preview_button.dart';
import 'package:getwidget/getwidget.dart';

import 'product_category_dropdown.dart';
import 'product_category_row.dart';

class ProductCategoryComponent extends StatefulWidget {
  ProductCategoryComponent({Key? key}) : super(key: key);

  @override
  State<ProductCategoryComponent> createState() =>
      _ProductCategoryComponentState();
}

bool _isChecked = false;

class _ProductCategoryComponentState extends State<ProductCategoryComponent> {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;

    return Container(
      // height: MediaQuery.of(context).size.height * 1.8,
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
          PreviewButton(size: _size),
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
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
