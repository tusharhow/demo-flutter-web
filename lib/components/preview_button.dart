import 'package:flutter/material.dart';

import 'dialogue_body_contents.dart';

class PreviewButton extends StatelessWidget {
  const PreviewButton({
    Key? key,
    required Size size,
  }) : _size = size, super(key: key);

  final Size _size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (context) => Dialog(
                  child: DialogueBodyContents(
                    size: _size,
                  ),
                ));
      },
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width / 3,
        decoration: BoxDecoration(
          color: Color(0xff3A1772),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            'Preview',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
        ),
      ),
    );
  }
}



