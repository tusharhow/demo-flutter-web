import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class DialougeBody extends StatefulWidget {
  DialougeBody(
      {Key? key,
      required this.isChecked,
      required this.dialSubTitle,
      required this.dialTitle})
      : super(key: key);
  bool isChecked = false;
  final dialTitle;
  final dialSubTitle;
  @override
  State<DialougeBody> createState() => _DialougeBodyState();
}

class _DialougeBodyState extends State<DialougeBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 25,
      ),
      child: Row(
        children: [
          SizedBox(
            height: 25,
            width: 25,
            child: GFCheckbox(
                type: GFCheckboxType.circle,
                onChanged: (value) {
                  setState(() {
                    widget.isChecked = value;
                  });
                },
                value: widget.isChecked),
          ),
          SizedBox(
            width: 10,
          ),
          Flexible(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.dialTitle,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    widget.dialSubTitle,
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 11,
                    ),
                    softWrap: true,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
