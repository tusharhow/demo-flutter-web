import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';

import '../../components/search_field_component.dart';

class UploadPhotoMobile extends StatelessWidget {
  const UploadPhotoMobile({
    Key? key,
    required Size size,
    required List<String> images,
  }) : _size = size, _images = images, super(key: key);

  final Size _size;
  final List<String> _images;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SearchFieldComponent(),
          SizedBox(
            height: 30,
          ),
          Container(
            height: _size.height * 0.95,
            width: _size.width / 1.05,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20),
                  child: Row(
                    children: [
                      Text(
                        'About Product',
                        style: TextStyle(
                          fontSize: _size.width * 0.03,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 20),
                  child: Row(
                    children: [
                      Text(
                        'Upload a Professional Photo of Your Product',
                        style: TextStyle(
                          fontSize: _size.width * 0.03,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: _size.height * 0.02,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Image.asset(
                          'assets/images/mini.png',
                          width: _size.width * 0.50,
                        ),
                      ),
                      SizedBox(
                        width: _size.width * 0.008,
                      ),
                      Column(
                        children: [
                          Image.asset(
                            'assets/images/mini2.png',
                            width: _size.width * 0.15,
                          ),
                          SizedBox(
                            height: _size.height * 0.02,
                          ),
                          Image.asset(
                            'assets/images/mini3.png',
                            width: _size.width * 0.15,
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
                            width: _size.width * 0.15,
                          ),
                          SizedBox(
                            height: _size.height * 0.02,
                          ),
                          Image.asset(
                            'assets/images/mini5.png',
                            width: _size.width * 0.15,
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      color: Colors.transparent,
                      width: _size.width * 0.9,
                      height: _size.height / 2.3,
                      child: ContainedTabBarView(
                        tabs: [
                          Text('Upload Files',
                              style: TextStyle(
                                fontSize: _size.width * 0.03,
                                color: Colors.black,
                              )),
                          Text('Media Library',
                              style: TextStyle(
                                fontSize: _size.width * 0.03,
                                color: Colors.black,
                              )),
                        ],
                        views: [
                          Container(
                            color: Colors.red,
                            child: Center(
                              child: Text(
                                'Upload Files',
                                style: TextStyle(
                                  fontSize: _size.width * 0.03,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            color: Colors.white,
                            child: Column(
                              children: [
                                Expanded(
                                  child: GridView.builder(
                                      itemCount: _images.length,
                                      gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                              crossAxisCount: 5),
                                      itemBuilder: (context, index) {
                                        return Container(
                                          margin: EdgeInsets.all(5),
                                          child: Image.network(
                                            _images[index],
                                            width: _size.width * 0.3,
                                            height:
                                                _size.height * 0.3,
                                          ),
                                        );
                                      }),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: _size.height * 0.03,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 45,
                        width: _size.width / 3.5,
                        child: RaisedButton(
                          onPressed: () {},
                          color: Color(0xff3A1772),
                          child: Text(
                            'Previous',
                            style: TextStyle(
                              fontSize: _size.width * 0.03,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: _size.width * 0.01,
                      ),
                      Container(
                        height: 45,
                        width: _size.width / 3.5,
                        child: RaisedButton(
                          onPressed: () {},
                          color: Color(0xff3A1772),
                          child: Text(
                            'Submit',
                            style: TextStyle(
                              fontSize: _size.width * 0.03,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}