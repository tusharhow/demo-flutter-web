import 'package:flutter/material.dart';

import '../components/quantity_packages_card.dart';

class CheckOutCard extends StatelessWidget {
  const CheckOutCard({
    Key? key,
    required Size size,
  })  : _size = size,
        super(key: key);

  final Size _size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _size.height * 1.5,
      width: _size.width / 1.05,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xff1C2B36),
            Color(0xff17653A),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20),
            child: Row(
              children: [
                Text(
                  'Quantity of Packages',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20),
            child: Row(
              children: [
                Container(
                  height: 50,
                  width: _size.width / 2.50,
                  decoration: BoxDecoration(
                    color: Color(0xff154F2F),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text('100',
                            style: TextStyle(
                              color: Color(0xff2FD87B),
                              fontSize: 25,
                            )),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: List.generate(
              250 ~/ 10,
              (index) => Expanded(
                child: Container(
                  color: index % 2 == 0 ? Colors.transparent : Colors.grey,
                  height: 2,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          QuantityPackagesCategoryCard(
            icon: "assets/images/sk.png",
            title: 'Skin Care',
            subtitle: 'Discovery facial (30 min)',
            secondSubtitle: 'Eye contour care',
          ),
          QuantityPackagesCategoryCard(
            icon: "assets/images/pee.png",
            title: '+ 1 Peeling Treatment',
            subtitle: 'Chemical peels',
            secondSubtitle: 'Laser peels',
          ),
          QuantityPackagesCategoryCard(
            icon: "assets/images/yelash.png",
            title: 'Eyelashes',
            subtitle: 'Discovery Eyelashes',
            secondSubtitle: 'Eyelash Enhancement',
          ),
          QuantityPackagesCategoryCard(
            icon: "assets/images/foot.png",
            title: 'Hand and Foot Care',
            subtitle: 'Express manicure',
            secondSubtitle: 'Express pedicure',
          ),
          QuantityPackagesCategoryCard(
            icon: "assets/images/hair.png",
            title: 'Hairdressing',
            subtitle: '1 haircut for women, children',
            secondSubtitle: '1 Men' 's haircut',
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20),
            child: Row(
              children: [
                Text(
                  'Quantity of Packages',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20),
            child: Row(
              children: [
                Container(
                  height: 50,
                  width: _size.width / 1.2,
                  decoration: BoxDecoration(
                    color: Color(0xff63391E),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child:
                            Text('Aesthetics - Hairdressing - Massage Therapy',
                                style: TextStyle(
                                  color: Color(0xffFF934F),
                                  fontSize: 13,
                                )),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: List.generate(
              250 ~/ 10,
              (index) => Expanded(
                child: Container(
                  color: index % 2 == 0 ? Colors.transparent : Colors.grey,
                  height: 2,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          QuantityPackagesCategoryCard(
            icon: "assets/images/bcare.png",
            title: 'Skin Care',
            subtitle: 'Discovery facial (30 min)',
            secondSubtitle: 'Eye contour care',
          ),
          QuantityPackagesCategoryCard(
            icon: "assets/images/hr.png",
            title: '+ 1 Peeling Treatment',
            subtitle: 'Chemical peels',
            secondSubtitle: 'Laser peels',
          ),
          QuantityPackagesCategoryCard(
            icon: "assets/images/mk.png",
            title: 'Eyelashes',
            subtitle: 'Discovery Eyelashes',
            secondSubtitle: 'Eyelash Enhancement',
          ),
          QuantityPackagesCategoryCard(
            icon: "assets/images/mk.png",
            title: 'Hand and Foot Care',
            subtitle: 'Express manicure',
            secondSubtitle: 'Express pedicure',
          ),
          QuantityPackagesCategoryCard(
            icon: "assets/images/msg.png",
            title: 'Hand and Foot Care',
            subtitle: 'Express manicure',
            secondSubtitle: 'Express pedicure',
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            children: List.generate(
              250 ~/ 10,
              (index) => Expanded(
                child: Container(
                  color: index % 2 == 0 ? Colors.transparent : Colors.grey,
                  height: 2,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: SizedBox(
              width: _size.width / 1.05,
              child: Image.asset(
                'assets/images/bar.png',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
