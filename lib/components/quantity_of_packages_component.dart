import 'package:flutter/material.dart';

import 'quantity_packages_row.dart';

class QuantityOfPackagesComponent extends StatelessWidget {
  const QuantityOfPackagesComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
      ],
    );
  }
}
