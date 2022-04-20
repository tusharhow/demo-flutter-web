import 'package:flutter/material.dart';

import '../../components/revenue_stat_card.dart';
import '../../components/search_field_component.dart';
import '../../components/store_stats.dart';

class RevenuePageMobile extends StatelessWidget {
  const RevenuePageMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff2E4154),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Image.asset(
          "assets/images/menu.png",
          width: 15,
          height: 15,
          color: Colors.white,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child:
                IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SearchFieldComponent(),
            SizedBox(
              height: 30,
            ),
            RevenueStatCard(
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
              height: 15,
            ),
            RevenueStatCard(
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
              height: 15,
            ),
            RevenueStatCard(
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
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
                  child: Text(
                    'Store Stats',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            StoreStats(
              title: '34 Orders',
              subtitle: 'Awaiting Treatment',
              subtitleStyle: TextStyle(
                color: Color(0xff7161EF),
                fontSize: 12,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            StoreStats(
              title: '1 Order',
              subtitle: 'Pending',
              subtitleStyle: TextStyle(
                color: Color(0xff3A1772),
                fontSize: 12,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            StoreStats(
              title: '2 Product',
              subtitle: 'In Low Stock',
              subtitleStyle: TextStyle(
                color: Color(0xffFF934F),
                fontSize: 12,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            StoreStats(
              title: '1 Product In',
              subtitle: 'Out Of Stock',
              subtitleStyle: TextStyle(
                color: Color(0xffD741A7),
                fontSize: 12,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Sales By Product',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset('assets/images/stat.png', height: _size.height * 0.2),
            Center(
              child: Text(
                'Pas Encore De Vente !',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset('assets/images/ch.png'),

            SizedBox(
              height: 20,
            ),
            Container(
              height: 350,
              width: _size.width / 1.15,
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
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Image.asset('assets/images/ps.png'),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
                  child: Text(
                    'Questions',
                    style: TextStyle(
                      color: Colors.white,
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
                      color: Colors.white,
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
                    'Hello, I was called by Bellbeauté and I don' 't know...',
                    style: TextStyle(
                      color: Colors.white,
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
                      color: Colors.white,
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
                      color: Colors.white,
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
    );
  }
}
