import 'package:flutter/material.dart';
import '../components/drawer.dart';
import '../components/event_banner.dart';
import '../components/product_category_component.dart';
import '../components/quantity_of_packages_component.dart';
import '../components/search_field_component.dart';
import 'add_a_product/add_product_desktop.dart';

class AddProductPage extends StatefulWidget {
  const AddProductPage({Key? key}) : super(key: key);

  @override
  State<AddProductPage> createState() => _AddProductPageState();
}

String? dropdown;

class _AddProductPageState extends State<AddProductPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: ((context, constraints) {
          if (constraints.maxWidth < 1691 || constraints.maxHeight < 715) {
            return Scaffold(
              backgroundColor: Color(0xff2E4154),
              key: _scaffoldKey,
              drawer: DefaultDrawer(size: MediaQuery.of(context).size),
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
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    SearchFieldComponent(),
                    SizedBox(
                      height: 30,
                    ),
                    EventBanner(
                      title: 'Create an Event',
                      img: "assets/images/banner.png",
                      desc:
                          'Discovery tickets are ideal for building the loyalty of\nyour new customers. Invite your new customer\nseveral times to your business and thereby create a\nbuying habit with it.',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Image.asset(
                      "assets/images/tuts.png",
                      width: MediaQuery.of(context).size.width / 1.05,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 20),
                      child: Row(
                        children: [
                          Text(
                            'Upload a Photo',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Image.asset(
                      "assets/images/upload.png",
                      color: Colors.white54,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Text(
                        'Drop a file here or click to download',
                        style: TextStyle(
                          color: Colors.white54,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Text(
                        'Maximum upload size: 516MB',
                        style: TextStyle(
                          color: Colors.white24,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Text(
                        'Please add a photo of your business! We \nsuggest that you post a photo of your\n business reception or the Outer Banner.\n Beautiful Beauty does not accept photos \nthat do not represent your business.',
                        style: TextStyle(
                          color: Colors.white54,
                          fontSize: 12,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    QuantityOfPackagesComponent(),
                    ProductCategoryComponent(),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            );
          } else {
            return AddAProductDesktop();
          }
        }),
      ),
    );
  }
}
