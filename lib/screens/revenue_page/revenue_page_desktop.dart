import 'package:flutter/material.dart';
import 'package:flutter_demo_web/responsive/responsive_layout.dart';
import '../../components/default_textformfield.dart';
import '../../components/revenuue_stat_card_desktop.dart';
import '../../components/side_menu_bar.dart';
import '../../components/store_stats_desktop.dart';
import '../../components/top_nav_bar.dart';

class RevenuePageDesktop extends StatelessWidget {
  const RevenuePageDesktop({Key? key}) : super(key: key);

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
                  // gradient: LinearGradient(
                  //   colors: [
                  //     Color(0xff1C2B36),
                  //     Color(0xff17653A),
                  //   ],
                  //   begin: Alignment.centerLeft,
                  //   end: Alignment.centerRight,
                  // ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            RevenueStatCardDesktop(
                              size: _size,
                              cardColor: Color(0xffD741A7),
                              image: "assets/images/money.png",
                              title: '\$20.00',
                              subtitle: 'Commission in the last 7 days',
                              titleTextStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                              subtitleTextStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                              onTap: () {},
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            RevenueStatCardDesktop(
                              size: _size,
                              cardColor: Colors.white,
                              image: "assets/images/object.png",
                              title: '2 Object',
                              subtitle: 'Sold in the last 7 days',
                              titleTextStyle: TextStyle(
                                color: Color(0xff3A1772),
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                              subtitleTextStyle: TextStyle(
                                color: Colors.black54,
                                fontSize: 12,
                              ),
                              onTap: () {},
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            RevenueStatCardDesktop(
                              size: _size,
                              cardColor: Colors.white,
                              image: "assets/images/order.png",
                              title: '5 Order',
                              subtitle: 'Received in the last 7 days',
                              titleTextStyle: TextStyle(
                                color: Color(0xff66101F),
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                              subtitleTextStyle: TextStyle(
                                color: Colors.black54,
                                fontSize: 12,
                              ),
                              onTap: () {},
                            ),
                          ],
                        ),
                      ),

                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Image.asset(
                                'assets/images/ch.png',
                                height: _size.height * 0.55,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                height: _size.height / 2,
                                width: _size.width / 3.5,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 20, top: 20, bottom: 20),
                                          child: Text(
                                            'Product Statistics',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 22,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Image.asset(
                                      'assets/images/ps.png',
                                      height: _size.height * 0.40,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 50, left: 20),
                                child: Container(
                                  height: _size.height / 3,
                                  width: _size.width / 6,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: SingleChildScrollView(
                                    child: Column(children: [
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20, top: 20, bottom: 20),
                                            child: Text(
                                              'Store Stats',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      RevenueStoreCardDesktop(
                                        size: _size,
                                        title: '34 Orders',
                                        subtitle: 'Awaiting Treatment',
                                        subtitleStyle: TextStyle(
                                          color: Color(0xff7161EF),
                                          fontSize: 12,
                                        ),
                                      ),
                                      Divider(
                                        color: Colors.black.withOpacity(0.05),
                                        thickness: 1,
                                        height: 30,
                                      ),
                                      RevenueStoreCardDesktop(
                                        size: _size,
                                        title: '34 Orders',
                                        subtitle: 'Awaiting Treatment',
                                        subtitleStyle: TextStyle(
                                          color: Color(0xff3A1772),
                                          fontSize: 12,
                                        ),
                                      ),
                                      Divider(
                                        color: Colors.black.withOpacity(0.05),
                                        thickness: 1,
                                        height: 30,
                                      ),
                                      RevenueStoreCardDesktop(
                                        size: _size,
                                        title: '34 Orders',
                                        subtitle: 'Awaiting Treatment',
                                        subtitleStyle: TextStyle(
                                          color: Color(0xffFF934F),
                                          fontSize: 12,
                                        ),
                                      ),
                                      Divider(
                                        color: Colors.black.withOpacity(0.05),
                                        thickness: 1,
                                        height: 30,
                                      ),
                                      RevenueStoreCardDesktop(
                                        size: _size,
                                        title: '34 Orders',
                                        subtitle: 'Awaiting Treatment',
                                        subtitleStyle: TextStyle(
                                          color: Color(0xffD741A7),
                                          fontSize: 12,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 30,
                                      ),
                                    ]),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 30, left: 20),
                                child: Container(
                                  height: _size.height / 3,
                                  width: _size.width / 6,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: SingleChildScrollView(
                                    child: Column(children: [
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20, top: 20, bottom: 20),
                                            child: Text(
                                              'Notifications',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          left: 20,
                                          top: 20,
                                        ),
                                        child: Row(
                                          children: [
                                            Text(
                                              'You have 1 new order',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 30,
                                      ),
                                    ]),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 30, left: 20),
                                child: Container(
                                  height: _size.height / 3,
                                  width: _size.width / 6,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: SingleChildScrollView(
                                    child: Column(children: [
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20, top: 20, bottom: 20),
                                            child: Text(
                                              'Sales By Product',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Image.asset('assets/images/stat.png',
                                          height: _size.height * 0.2),
                                      Center(
                                        child: Text(
                                          'Pas Encore De Vente !',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 30,
                                      ),
                                    ]),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20, top: 20, bottom: 20),
                            child: Text(
                              'Questions',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      // SizedBox(
                      //   height: 10,
                      // ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              'I bought the package on May 6 and did not receive the certif ...',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              'Hello, I was called by Bellbeauté and I don'
                              't know...',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              'Do you currently have people from Belle Beauté who ve...',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              'I would like to buy all the access you have how much ...',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
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
