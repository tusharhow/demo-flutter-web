import 'package:flutter/material.dart';

import '../widgets/product_category_widget_desktop.dart';
import 'dialogue_body.dart';

class DialogueBodyContents extends StatelessWidget {
  const DialogueBodyContents({Key? key, required this.size}) : super(key: key);
  final size;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 1,
      width: size.width / 3.5,
      child: Column(
        children: [
          Padding(
              padding: const EdgeInsets.only(top: 20, left: 25, right: 25),
              child: Row(
                children: [
                  Text(
                    'Select Skin Care Discovery Services',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.red.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.close,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              )),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 25,
            ),
            child: Row(
              children: [
                Text(
                  'Please choose a maximum of 2 skin care discovery services',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          DialougeBody(
              isChecked: true,
              dialSubTitle:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
              dialTitle: 'Discovery facial (30 min)'),
          SizedBox(
            height: 20,
          ),
          DialougeBody(
              isChecked: true,
              dialSubTitle:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
              dialTitle: 'Discovery facial (30 min)'),
          SizedBox(
            height: 20,
          ),
          DialougeBody(
              isChecked: false,
              dialSubTitle:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
              dialTitle: 'Discovery facial (30 min)'),
          SizedBox(
            height: 20,
          ),
          DialougeBody(
              isChecked: false,
              dialSubTitle:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
              dialTitle: 'Discovery facial (30 min)'),
          SizedBox(
            height: 20,
          ),
          DialougeBody(
              isChecked: false,
              dialSubTitle:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
              dialTitle: 'Discovery facial (30 min)'),
          SizedBox(
            height: 20,
          ),
          DialougeBody(
              isChecked: false,
              dialSubTitle:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
              dialTitle: 'Discovery facial (30 min)'),
          SizedBox(
            height: 20,
          ),
          DialougeBody(
              isChecked: false,
              dialSubTitle:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
              dialTitle: 'Discovery facial (30 min)'),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 25,
            ),
            child: Row(
              children: [
                Text(
                  'Add Discovery Services',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 25,
            ),
            child: Row(
              children: [
                Text(
                  'Type your descriptions....',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 25,
            ),
            child: Row(
              children: [
                Container(
                  height: 50,
                  width: size.width / 12,
                  decoration: BoxDecoration(
                    color: Color(0xff3A1772),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text(
                      'Save',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}