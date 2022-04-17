import 'package:flutter/material.dart';

import '../../components/default_textformfield.dart';
import '../../components/side_menu_bar.dart';
import '../../components/top_nav_bar.dart';
import '../../responsive/responsive_layout.dart';

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
                        if (!Responsive.isMobile(context))
                          TopNavBar(size: _size)
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: 290,
                          width: MediaQuery.of(context).size.width / 2.80,
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
                                        padding: const EdgeInsets.only(
                                            top: 20, left: 20),
                                        child: Row(
                                          children: [
                                            Text(
                                              'Create an Event',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 24,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
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
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20),
                                        child: Row(
                                          children: [
                                            Container(
                                              height: 45,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  12,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  'Learn More',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
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
                          width: 20,
                        ),
                        Image.asset(
                          "assets/images/tuts.png",
                          width: MediaQuery.of(context).size.width / 5,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(
                    height: 400,
                    width: _size.width / 2.5,
                    decoration: BoxDecoration(
                      color: Colors.red,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
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
                        color: Colors.black54,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Text(
                          'Drop a file here or click to download',
                          style: TextStyle(
                            color: Colors.black54,
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
                            color: Colors.black54,
                            fontSize: 14,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
