import 'package:flutter/material.dart';

class OffDayWidget extends StatelessWidget {
  const OffDayWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Text(
            'Wednesday',
            style: TextStyle(
              color: Color(0xff7161EF),
              fontSize: 12,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            'Thursday',
            style: TextStyle(
              color: Color(0xff7161EF),
              fontSize: 12,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            'Friday',
            style: TextStyle(
              color: Color(0xff7161EF),
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
