import 'package:flutter/material.dart';

class SearchFieldComponent extends StatelessWidget {
  const SearchFieldComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}

