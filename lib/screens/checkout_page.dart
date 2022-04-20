import 'package:flutter/material.dart';
import 'package:flutter_demo_web/screens/checkout_page/checkout_page_mobile.dart';
import 'checkout_page/checkout_page_desktop.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 600 || constraints.maxHeight < 715) {
        return CheckoutPageMobile();
      } else {
        return CheckoutPageDesktop();
      }
    }));
  }
}
