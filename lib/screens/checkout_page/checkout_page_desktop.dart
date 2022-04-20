import 'package:flutter/material.dart';
import 'package:flutter_demo_web/responsive/responsive_layout.dart';

import '../../components/default_textformfield.dart';
import '../../components/quantity_card.dart';
import '../../components/quantity_packages_card.dart';
import '../../components/quantity_packages_category_card_desktop.dart';
import '../../components/side_menu_bar.dart';
import '../../components/top_nav_bar.dart';
import '../individual_product/individual_product_mobile.dart';

class CheckoutPageDesktop extends StatelessWidget {
  const CheckoutPageDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                height: _size.height * 0.8,
                width: _size.width * 0.6,
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
                child: SingleChildScrollView(
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
                                fontSize: 18,
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
                              width: _size.width / 10,
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
                              color: index % 2 == 0
                                  ? Colors.transparent
                                  : Colors.grey,
                              height: 2,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      QuantityPackagesCategoryCardDesktop(
                        icon: "assets/images/sk.png",
                        title: 'Skin Care',
                        subtitle: 'Discovery facial (30 min)',
                        secondSubtitle: 'Eye contour care',
                      ),
                      QuantityPackagesCategoryCardDesktop(
                        icon: "assets/images/pee.png",
                        title: '+ 1 Peeling Treatment',
                        subtitle: 'Chemical peels',
                        secondSubtitle: 'Laser peels',
                      ),
                      QuantityPackagesCategoryCardDesktop(
                        icon: "assets/images/yelash.png",
                        title: 'Eyelashes',
                        subtitle: 'Discovery Eyelashes',
                        secondSubtitle: 'Eyelash Enhancement',
                      ),
                      QuantityPackagesCategoryCardDesktop(
                        icon: "assets/images/foot.png",
                        title: 'Hand and Foot Care',
                        subtitle: 'Express manicure',
                        secondSubtitle: 'Express pedicure',
                      ),
                      QuantityPackagesCategoryCardDesktop(
                        icon: "assets/images/hair.png",
                        title: 'Hairdressing',
                        subtitle: '1 haircut for women, children',
                        secondSubtitle: '1 Men' 's haircut',
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30, left: 20),
                        child: Row(
                          children: [
                            Text(
                              'Quantity of Packages',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
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
                              height: _size.height * 0.07,
                              width: _size.width / 4.5,
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
                                    child: Text(
                                        'Aesthetics - Hairdressing - Massage Therapy',
                                        style: TextStyle(
                                          color: Color(0xffFF934F),
                                          fontSize: 15,
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
                              color: index % 2 == 0
                                  ? Colors.transparent
                                  : Colors.grey,
                              height: 2,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      QuantityPackagesCategoryCardDesktop(
                        icon: "assets/images/bcare.png",
                        title: 'Skin Care',
                        subtitle: 'Discovery facial (30 min)',
                        secondSubtitle: 'Eye contour care',
                      ),
                      QuantityPackagesCategoryCardDesktop(
                        icon: "assets/images/hr.png",
                        title: '+ 1 Peeling Treatment',
                        subtitle: 'Chemical peels',
                        secondSubtitle: 'Laser peels',
                      ),
                      QuantityPackagesCategoryCardDesktop(
                        icon: "assets/images/mk.png",
                        title: 'Eyelashes',
                        subtitle: 'Discovery Eyelashes',
                        secondSubtitle: 'Eyelash Enhancement',
                      ),
                      QuantityPackagesCategoryCardDesktop(
                        icon: "assets/images/mk.png",
                        title: 'Hand and Foot Care',
                        subtitle: 'Express manicure',
                        secondSubtitle: 'Express pedicure',
                      ),
                      QuantityPackagesCategoryCardDesktop(
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
                              color: index % 2 == 0
                                  ? Colors.transparent
                                  : Colors.grey,
                              height: 2,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Center(
                        child: SizedBox(
                          width: _size.width / 1.05,
                          child: Image.asset(
                            'assets/images/bar.png',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25,
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
