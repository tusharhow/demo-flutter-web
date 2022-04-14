import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';

import '../../components/default_textformfield.dart';
import '../../components/side_menu_bar.dart';
import '../../components/top_nav_bar.dart';
import '../../responsive/responsive_layout.dart';

class IndiviDualProductDesktop extends StatelessWidget {
  const IndiviDualProductDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Material(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
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
                            Padding(
                              padding: const EdgeInsets.only(top: 20, left: 20),
                              child: Row(
                                children: [
                                  Text(
                                    'Upload a Professional Photo of Your Product',
                                    style: TextStyle(),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: _size.height * 0.02,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(30),
                                    child: Image.asset(
                                      'assets/images/mini.png',
                                      width: _size.width * 0.20,
                                    ),
                                  ),
                                  SizedBox(
                                    width: _size.width * 0.008,
                                  ),
                                  Column(
                                    children: [
                                      Image.asset(
                                        'assets/images/mini2.png',
                                        width: _size.width * 0.05,
                                      ),
                                      SizedBox(
                                        height: _size.height * 0.02,
                                      ),
                                      Image.asset(
                                        'assets/images/mini3.png',
                                        width: _size.width * 0.05,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: _size.width * 0.008,
                                  ),
                                  Column(
                                    children: [
                                      Image.asset(
                                        'assets/images/mini4.png',
                                        width: _size.width * 0.05,
                                      ),
                                      SizedBox(
                                        height: _size.height * 0.02,
                                      ),
                                      Image.asset(
                                        'assets/images/mini5.png',
                                        width: _size.width * 0.05,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: _size.height * 0.01,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
