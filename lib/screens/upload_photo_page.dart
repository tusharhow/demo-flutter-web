import 'package:flutter/material.dart';
import 'package:flutter_demo_web/screens/upload_photo/upload_photo_mobile.dart';
import '../components/drawer.dart';
import 'upload_photo/upload_photo_desktop.dart';

class UploadPhotoPage extends StatefulWidget {
  const UploadPhotoPage({Key? key}) : super(key: key);

  @override
  State<UploadPhotoPage> createState() => _UploadPhotoPageState();
}

class _UploadPhotoPageState extends State<UploadPhotoPage> {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;

    final List<String> _images = [
      "assets/images/im1.png",
      "assets/images/im2.png",
      "assets/images/im3.png",
      "assets/images/im4.png",
      "assets/images/im5.png",
      "assets/images/im6.png",
      "assets/images/im7.png",
      "assets/images/im8.png",
      "assets/images/im9.png",
      "assets/images/10.png",
    ];
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      body: LayoutBuilder(
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
              body: UploadPhotoMobile(size: _size, images: _images),
            );
          } else {
            return UploadPhotoDesktop(size: _size, images: _images);
          }
        },
      ),
    );
  }
}