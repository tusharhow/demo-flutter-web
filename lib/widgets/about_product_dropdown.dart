import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class AboutProductDropdown extends StatefulWidget {
  AboutProductDropdown({Key? key, required this.hint}) : super(key: key);
  final hint;
  @override
  State<AboutProductDropdown> createState() => _AboutProductDropdownState();
}

class _AboutProductDropdownState extends State<AboutProductDropdown> {
  @override
  Widget build(BuildContext context) {
    String ?dropdown;
    return Expanded(
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.all(20),
        child: DropdownButtonHideUnderline(
          child: GFDropdown(
            padding: const EdgeInsets.all(10),
            borderRadius: BorderRadius.circular(10),
            border: const BorderSide(color: Color(0xff2FD87B), width: 1),
            dropdownButtonColor: Colors.grey[300],
            value: dropdown,
            hint: Text(
              widget.hint,
              style: TextStyle(
                color: Colors.black,
                fontSize: 13,
              ),
            ),
            icon: const Icon(
              Icons.arrow_drop_down,
              color: Colors.black,
            ),
            onChanged: (newValue) {
              setState(() {
                dropdown = newValue as String?;
              });
            },
            items: [
              'Body Care',
              'Hair Care',
              'Skin Care',
              'Makeup',
            ]
                .map((value) => DropdownMenuItem(
                      value: value,
                      child: Text(value),
                    ))
                .toList(),
          ),
        ),
      ),
    );
  }
}
