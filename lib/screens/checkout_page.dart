import 'package:flutter/material.dart';
import '../components/checkout_button.dart';
import '../components/search_field_component.dart';
import '../widgets/checkout_card.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
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
