import 'package:flutter/material.dart';

class CardSubmitCard extends StatelessWidget {
  const CardSubmitCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}

