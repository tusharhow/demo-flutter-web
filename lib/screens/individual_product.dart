import 'package:flutter/material.dart';
import 'package:flutter_demo_web/screens/individual_product/individual_product_mobile.dart';
import '../components/drawer.dart';
import 'individual_product/individual_product_desktop.dart';

class IndividualProduct extends StatelessWidget {
  IndividualProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;

    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600 || constraints.maxHeight < 715) {
          return Scaffold(
            backgroundColor: Color(0xff2E4154),
            key: _scaffoldKey,
            drawer: DefaultDrawer(size: _size),
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              leading: SizedBox(
                child: GestureDetector(
                  onTap: (() {
                    _scaffoldKey.currentState!.openDrawer();
                  }),
                  child: Image.asset(
                    "assets/images/menu.png",
                    width: 15,
                    height: 15,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            body: IndiviDualProductMobile(),
          );
        } else {
          return IndiviDualProductDesktop();
        }
      },
    );
  }
}
