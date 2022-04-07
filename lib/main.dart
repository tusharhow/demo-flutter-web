import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2E4154),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: SizedBox(
          child: Image.asset(
            "assets/images/menu.png",
            width: 15,
            height: 15,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 15, 20, 0),
              child: TextField(
                enableSuggestions: true,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 10),
                  suffixIcon: Icon(
                    Icons.search,
                    color: Colors.white54,
                    size: 18,
                  ),
                  hintText: 'Search  for products...',
                  hintStyle: TextStyle(color: Colors.white54, fontSize: 13),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white54),
                    borderRadius: BorderRadius.all(
                      Radius.circular(8.0),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(8.0),
                    ),
                    borderSide: BorderSide(color: Colors.white54),
                  ),
                ),
                onChanged: (value) {
                  print(value);
                },
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 150,
              width: MediaQuery.of(context).size.width / 1.05,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: LinearGradient(
                  colors: [
                    Color(0xff049E86),
                    Color(0xff01694E),
                    Color(0xff005236),
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
              child: Column(children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 20),
                          child: Text(
                            'Michael Nagy',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 11,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 5),
                          child: Text(
                            'Today’s Revenue',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 10),
                          child: Text(
                            '\$0.00',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Image.asset(
                        "assets/images/hh.png",
                        height: 70,
                      ),
                    ),
                  ],
                ),
              ]),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
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
                  Container(
                    height: 30,
                    width: MediaQuery.of(context).size.width / 1.15,
                    color: Color(0xff7CC8F4),
                    child: Center(
                      child: Text(
                        'Store Default Store Hours Setting',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
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
                  Padding(
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
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
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
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 30,
                    width: MediaQuery.of(context).size.width / 1.15,
                    color: Color(0xff7CC8F4),
                    child: Center(
                      child: Text(
                        'Daily Opening And Closing Times',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
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
                        Container(
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
                            child: Text(
                              '_ _  :  _ _ :  _ _',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ),
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
                        Container(
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
                            child: Text(
                              '_ _  :  _ _ :  _ _',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                              ),
                            ),
                          ),
                        )
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
                        Container(
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
                            child: Text(
                              '_ _  :  _ _ :  _ _',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ),
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
                        Container(
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
                            child: Text(
                              '_ _  :  _ _ :  _ _',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                              ),
                            ),
                          ),
                        )
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
                        Container(
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
                            child: Text(
                              '_ _  :  _ _ :  _ _',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ),
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
                        Container(
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
                            child: Text(
                              '_ _  :  _ _ :  _ _',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                              ),
                            ),
                          ),
                        )
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
                        Container(
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
                            child: Text(
                              '_ _  :  _ _ :  _ _',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ),
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
                        Container(
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
                            child: Text(
                              '_ _  :  _ _ :  _ _',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                              ),
                            ),
                          ),
                        )
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
                        Container(
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
                            child: Text(
                              '_ _  :  _ _ :  _ _',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ),
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
                        Container(
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
                            child: Text(
                              '_ _  :  _ _ :  _ _',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                              ),
                            ),
                          ),
                        )
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
                        Container(
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
                            child: Text(
                              '_ _  :  _ _ :  _ _',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ),
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
                        Container(
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
                            child: Text(
                              '_ _  :  _ _ :  _ _',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                              ),
                            ),
                          ),
                        )
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
                        Container(
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
                            child: Text(
                              '_ _  :  _ _ :  _ _',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ),
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
                        Container(
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
                            child: Text(
                              '_ _  :  _ _ :  _ _',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Image(
                    image: AssetImage('assets/images/bank.png'),
                    height: 40,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'Set Up Your Payment Method',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 500,
              width: MediaQuery.of(context).size.width / 1.05,
              decoration: BoxDecoration(
                color: Color(0xff7161EF),
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: Colors.black26,
                  width: 1,
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25, top: 20),
                    child: Row(
                      children: [
                        Text(
                          'Card Number',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, top: 10),
                    child: Row(
                      children: [
                        Text(
                          'Enter the 16 digit card number on the card',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width / 1.2,
                    decoration: BoxDecoration(
                      color: Color(0XFF6356CE),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/card.png',
                            height: 30,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            '2412  -  2412  -  2412  -  2412',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                            ),
                          ),
                          Spacer(),
                          Container(
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Image.asset(
                                'assets/images/circle.png',
                                height: 30,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 25, top: 20),
                            child: Row(
                              children: [
                                Text(
                                  'CVV Number',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 25, top: 5),
                            child: Text(
                              'Enter the 3 or 4 digit number on the card',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 9,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 25,
                            ),
                            child: Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width / 3.5,
                              decoration: BoxDecoration(
                                color: Color(0XFF6356CE),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Row(
                                  children: [
                                    Text(
                                      '237',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20, top: 20),
                            child: Row(
                              children: [
                                Text(
                                  'Expiry Date',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20, top: 5),
                            child: Text(
                              'Enter expiration date of the card',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 9,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 25,
                                  ),
                                  child: Container(
                                    height: 50,
                                    width:
                                        MediaQuery.of(context).size.width / 5.9,
                                    decoration: BoxDecoration(
                                      color: Color(0XFF6356CE),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      child: Row(
                                        children: [
                                          Text(
                                            '237',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 5,
                                  ),
                                  child: Container(
                                    height: 50,
                                    width:
                                        MediaQuery.of(context).size.width / 5.9,
                                    decoration: BoxDecoration(
                                      color: Color(0XFF6356CE),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      child: Row(
                                        children: [
                                          Text(
                                            '237',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 20),
                        child: Row(
                          children: [
                            Text(
                              'Password',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 5),
                        child: Text(
                          'Enter your dynamic password',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: '237',
                            hintStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                            ),
                            filled: true,
                            fillColor: Color(0XFF6356CE),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.transparent,
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.transparent,
                              ),
                            ),
                            suffixIcon: Icon(
                              Icons.visibility_off,
                              color: Colors.white54,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Center(
                        child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width / 1.3,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text(
                              'Submit',
                              style: TextStyle(
                                color: Color(0XFF6356CE),
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
