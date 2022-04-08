import 'package:flutter/material.dart';

import '../components/default_container.dart';
import '../components/off_day_widget.dart';
import '../components/set_day_off_widget.dart';
import '../components/time_slots_widget.dart';

class OpeningHoursCard extends StatelessWidget {
  const OpeningHoursCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 810,
      width: MediaQuery.of(context).size.width / 1.05,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                "assets/images/clock.png",
                height: 70,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Opening Hours',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          DefaultContainer(
            label: 'Store Default Store Hours Setting',
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Set Day OFF :',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          SetDayOffWidegt(),
          SizedBox(
            height: 10,
          ),
          OffDayWidget(),
          SizedBox(
            height: 20,
          ),
          DefaultContainer(
            label: 'Daily Opening And Closing Times',
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Monday Time Slots',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text(
                  'Opening',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                TimeSlotsWidget(),
                Spacer(),
                Text(
                  'Closing',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                TimeSlotsWidget(),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Tuesday Time Slots',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text(
                  'Opening',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                TimeSlotsWidget(),
                Spacer(),
                Text(
                  'Closing',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                TimeSlotsWidget(),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Wednesday Time Slots',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text(
                  'Opening',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                TimeSlotsWidget(),
                Spacer(),
                Text(
                  'Closing',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                TimeSlotsWidget(),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Thursday Time Slots',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text(
                  'Opening',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                TimeSlotsWidget(),
                Spacer(),
                Text(
                  'Closing',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                TimeSlotsWidget(),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Friday Time Slots',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text(
                  'Opening',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                TimeSlotsWidget(),
                Spacer(),
                Text(
                  'Closing',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                TimeSlotsWidget(),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Saturday Time Slots',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text(
                  'Opening',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                TimeSlotsWidget(),
                Spacer(),
                Text(
                  'Closing',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                TimeSlotsWidget(),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Monday Time Slots',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text(
                  'Opening',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                TimeSlotsWidget(),
                Spacer(),
                Text(
                  'Closing',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                TimeSlotsWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
