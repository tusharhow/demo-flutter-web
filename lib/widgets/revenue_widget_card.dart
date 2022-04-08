import 'package:flutter/material.dart';

class RevenueCard extends StatelessWidget {
  const RevenueCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: MediaQuery.of(context).size.width / 1.05,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        gradient: LinearGradient(
          colors: [
            Color(0xff049E86),
            Color(0xff01694E),
            Color(0xff005236),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: Column(children: [
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20),
                  child: Text(
                    'Michael Nagy',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 5),
                  child: Text(
                    'Today’s Revenue',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10),
                  child: Text(
                    '\$0.00',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Image.asset(
                "assets/images/hh.png",
                height: 70,
              ),
            ),
          ],
        ),
      ]),
    );
  }
}