import 'package:flutter/material.dart';

import '../components/default_container.dart';
import '../components/off_day_widget.dart';
import '../components/search_field_component.dart';
import '../components/set_day_off_widget.dart';
import '../components/time_slots_widget.dart';
import '../widgets/card_submit_card_widget.dart';
import '../widgets/opening_hours_card.dart';
import '../widgets/revenue_widget_card.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

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
            RevenueCard(),
            SizedBox(
              height: 30,
            ),
            OpeningHoursCard(),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Image(
                    image: AssetImage('assets/images/bank.png'),
                    height: 40,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'Set Up Your Payment Method',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CardSubmitCard(),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}



