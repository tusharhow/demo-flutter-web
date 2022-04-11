import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class ProductCategoryDropdown extends StatefulWidget {
  ProductCategoryDropdown({Key? key}) : super(key: key);

  @override
  State<ProductCategoryDropdown> createState() =>
      _ProductCategoryDropdownState();
}

class _ProductCategoryDropdownState extends State<ProductCategoryDropdown> {
  String? dropdown;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 45,
          width: MediaQuery.of(context).size.width / 2.8,
          margin: EdgeInsets.all(20),
          child: DropdownButtonHideUnderline(
            child: GFDropdown(
              padding: const EdgeInsets.all(15),
              borderRadius: BorderRadius.circular(5),
              icon: Icon(
                Icons.keyboard_arrow_down,
                color: Colors.black,
              ),
              hint: Text(
                'Select',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                ),
              ),
              border: const BorderSide(color: Colors.black12, width: 1),
              dropdownButtonColor: Colors.white,
              value: dropdown,
              onChanged: (newValue) {
                setState(() {
                  dropdown = newValue as String;
                });
              },
              items: [
                'Body Massage',
                'Skin Care',
                'Spa',
                'Hair Care',
              ]
                  .map((value) => DropdownMenuItem(
                        value: value,
                        child: Text(value,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            )),
                      ))
                  .toList(),
            ),
          ),
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Row(
            children: [
              Text(
                '\$',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 15,
                ),
              ),
              Image.asset(
                "assets/images/edit.png",
                width: 30,
                color: Colors.black54,
              ),
            ],
          ),
        )
      ],
    );
  }
}
