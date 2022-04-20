import 'package:flutter/material.dart';
import 'package:flutter_demo_web/components/quantityof_packages_row_desktop.dart';
import '../../components/default_textformfield.dart';
import '../../components/side_menu_bar.dart';
import '../../components/top_nav_bar.dart';
import '../../widgets/product_category_widget_desktop.dart';

class AddAProductDesktop extends StatefulWidget {
  AddAProductDesktop({Key? key}) : super(key: key);

  @override
  State<AddAProductDesktop> createState() => _AddAProductDesktopState();
}

class _AddAProductDesktopState extends State<AddAProductDesktop> {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
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
                        // if (!Responsive.isMobile(context))
                        TopNavBar(size: _size)
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 100),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 290,
                                    width: MediaQuery.of(context).size.width /
                                        2.80,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Color(0xff1C2B36),
                                          Color(0xff17653A),
                                        ],
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 20, left: 20),
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        'Create an Event',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 24,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 15,
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 20),
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        'Discovery tickets are ideal for building the loyalty of\nyour new customers. Invite your new customer\nseveral times to your business and thereby create a\nbuying habit with it.',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 14,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 20,
                                                ),
                                                // ElevatedButton(
                                                //   onPressed: () {
                                                //     print(_size.width);
                                                //   },
                                                //   child: Text('Upload a Photo'),
                                                // ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 20),
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        height: 45,
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width /
                                                            12,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                        ),
                                                        child: Center(
                                                          child: Text(
                                                            'Learn More',
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 14,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                top: 20,
                                              ),
                                              child: Image.asset(
                                                'assets/images/banner.png',
                                                height: _size.height / 4,
                                                width: _size.width / 7,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 35,
                                  ),
                                  Image.asset(
                                    "assets/images/tuts.png",
                                    width:
                                        MediaQuery.of(context).size.width / 5,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            ProductCategoryComponentDesktop(),
                            SizedBox(
                              width: 35,
                            ),
                            Row(
                              // crossAxisAlignment: CrossAxisAlignment.center,
                              // mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  // crossAxisAlignment: CrossAxisAlignment.center,
                                  // mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Row(
                                        children: [
                                          Text(
                                            'Upload a Photo',
                                            style: TextStyle(
                                              color: Colors.black,
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
                                      color: Colors.black45,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Center(
                                      child: Text(
                                        'Drop a file here or click to download',
                                        style: TextStyle(
                                          color: Colors.black45,
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
                                          color: Colors.black26,
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
                                          color: Colors.black45,
                                          fontSize: 12,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Column(
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              'Quantity Of Packages',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        QuantityOfPackagesRowDesktop(
                                          amount: '\$252',
                                          containerText: '50',
                                          containerTitle:
                                              'Receive a royalty from Belle\nBeauté of',
                                          containerColor: Colors.orange,
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        QuantityOfPackagesRowDesktop(
                                          amount: '\$504',
                                          containerText: '100',
                                          containerTitle:
                                              'Receive a royalty from Belle\nBeauté of',
                                          containerColor: Colors.indigo,
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        QuantityOfPackagesRowDesktop(
                                          amount: '\$1008',
                                          containerText: '200',
                                          containerTitle:
                                              'Receive a royalty from Belle\nBeauté of',
                                          containerColor: Colors.green,
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        QuantityOfPackagesRowDesktop(
                                          amount: '\$1512',
                                          containerText: '300',
                                          containerTitle:
                                              'Receive a royalty from Belle\nBeauté of',
                                          containerColor: Colors.blue,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
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
