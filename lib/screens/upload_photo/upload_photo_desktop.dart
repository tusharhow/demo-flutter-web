import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';

import '../../components/default_textformfield.dart';
import '../../components/side_menu_bar.dart';
import '../../components/top_nav_bar.dart';
import '../../responsive/responsive_layout.dart';

class UploadPhotoDesktop extends StatelessWidget {
  const UploadPhotoDesktop({
    Key? key,
    required Size size,
    required List<String> images,
  }) : _size = size, _images = images, super(key: key);

  final Size _size;
  final List<String> _images;

  @override
  Widget build(BuildContext context) {
    return Column(
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
                  Container(
                    height: _size.height * 0.8,
                    width: _size.width * 0.6,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 5,
                          offset: Offset(0, 5),
                        ),
                      ],
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 20),
                            child: Row(
                              children: [
                                Text(
                                  'About Product',
                                  style: TextStyle(
                                    fontSize: _size.width * 0.01,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 20),
                            child: Row(
                              children: [
                                Text(
                                  'Upload a Professional Photo of Your Product',
                                  style: TextStyle(),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: _size.height * 0.02,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20),
                            child: Row(
                              children: [
                                ClipRRect(
                                  borderRadius:
                                      BorderRadius.circular(30),
                                  child: Image.asset(
                                    'assets/images/mini.png',
                                    width: _size.width * 0.20,
                                  ),
                                ),
                                SizedBox(
                                  width: _size.width * 0.008,
                                ),
                                Column(
                                  children: [
                                    Image.asset(
                                      'assets/images/mini2.png',
                                      width: _size.width * 0.05,
                                    ),
                                    SizedBox(
                                      height: _size.height * 0.02,
                                    ),
                                    Image.asset(
                                      'assets/images/mini3.png',
                                      width: _size.width * 0.05,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: _size.width * 0.008,
                                ),
                                Column(
                                  children: [
                                    Image.asset(
                                      'assets/images/mini4.png',
                                      width: _size.width * 0.05,
                                    ),
                                    SizedBox(
                                      height: _size.height * 0.02,
                                    ),
                                    Image.asset(
                                      'assets/images/mini5.png',
                                      width: _size.width * 0.05,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: _size.height * 0.01,
                          ),
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(8.0),
                                color: Colors.transparent,
                                width: _size.width * 0.6,
                                height: _size.height / 2.3,
                                child: ContainedTabBarView(
                                  tabs: [
                                    Text('Upload Files',
                                        style: TextStyle(
                                          fontSize: _size.width * 0.009,
                                          color: Colors.black,
                                        )),
                                    Text('Media Library',
                                        style: TextStyle(
                                          fontSize: _size.width * 0.009,
                                          color: Colors.black,
                                        )),
                                  ],
                                  views: [
                                    Container(
                                      color: Colors.red,
                                      child: Center(
                                        child: Text('Upload Files',
                                            style: TextStyle(
                                                fontSize:
                                                    _size.width * 0.03,
                                                fontWeight:
                                                    FontWeight.bold)),
                                      ),
                                    ),
                                    Container(
                                      color: Colors.white,
                                      child: Column(
                                        children: [
                                          Expanded(
                                            child: GridView.builder(
                                                itemCount:
                                                    _images.length,
                                                gridDelegate:
                                                    SliverGridDelegateWithFixedCrossAxisCount(
                                                        crossAxisCount:
                                                            5),
                                                itemBuilder:
                                                    (context, index) {
                                                  return Container(
                                                    margin:
                                                        EdgeInsets.all(
                                                            5),
                                                    child:
                                                        Image.network(
                                                      _images[index],
                                                      width:
                                                          _size.width *
                                                              0.1,
                                                      height:
                                                          _size.height *
                                                              0.1,
                                                    ),
                                                  );
                                                }),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}