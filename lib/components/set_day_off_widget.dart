import 'package:flutter/material.dart';

class SetDayOffWidegt extends StatelessWidget {
  const SetDayOffWidegt({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Container(
            height: 30,
            width: MediaQuery.of(context).size.width / 5,
            color: Color(0xff7161EF),
            child: Center(
              child: Text(
                'Saturday',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            'Sunday',
            style: TextStyle(
              color: Color(0xff7161EF),
              fontSize: 12,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            'Monday',
            style: TextStyle(
              color: Color(0xff7161EF),
              fontSize: 12,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            'Tuesday',
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
