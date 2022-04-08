import 'package:flutter/material.dart';

class TimeSlotsWidget extends StatelessWidget {
  const TimeSlotsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: MediaQuery.of(context).size.width / 5,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: Colors.black26,
          width: 1,
        ),
      ),
      child: Center(
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: '_ _  :  _ _ :  _ _',
            contentPadding: EdgeInsets.only(
              left: 10,
              right: 10,
              bottom: 15,
            ),
          ),
          style: TextStyle(
            color: Colors.black,
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}