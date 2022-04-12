import 'package:flutter/material.dart';

class DefaultTextFormField extends StatelessWidget {
  const DefaultTextFormField({
    Key? key,
    required Size size,
  }) : _size = size, super(key: key);

  final Size _size;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 20,
      left: _size.width * 0.20,
      child: Column(
        children: [
          SizedBox(
            height: _size.height * 0.5,
            width: _size.width * 0.3,
            child: TextFormField(
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                labelText: 'Search for products...',
                labelStyle: TextStyle(
                    fontSize: _size.width * 0.01,
                    color: Colors.grey),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.transparent,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                prefixIcon: Image.asset(
                  'assets/images/search.png',
                  width: _size.width * 0.03,
                  height: _size.height * 0.03,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}