import 'package:flutter/material.dart';

import '../../components/checkout_button.dart';
import '../../components/drawer.dart';
import '../../components/search_field_component.dart';
import '../../widgets/checkout_card.dart';

class CheckoutPageMobile extends StatelessWidget {
  const CheckoutPageMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      backgroundColor: Color(0xff2E4154),
      key: _scaffoldKey,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
          onTap: (() {
            _scaffoldKey.currentState!.openDrawer();
          }),
          child: SizedBox(
            child: Image.asset(
              "assets/images/menu.png",
              width: 15,
              height: 15,
              color: Colors.white,
            ),
          ),
        ),
      ),
      drawer: DefaultDrawer(
        size: _size,
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          SearchFieldComponent(),
          SizedBox(
            height: 30,
          ),
          CheckOutCard(size: _size),
          SizedBox(
            height: 30,
          ),
          CheckOutButton(
            size: _size,
            firstTitle: 'Save Draft',
            secondTitle: 'Submit',
          )
        ],
      )),
    );
  }
}
