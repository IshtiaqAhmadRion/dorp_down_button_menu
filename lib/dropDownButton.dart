import 'package:flutter/material.dart';

class DropDownButtonTest extends StatefulWidget {
  @override
  _DropDownButtonTestState createState() => _DropDownButtonTestState();
}

class _DropDownButtonTestState extends State<DropDownButtonTest> {
  String valueChoose;
  List listItem = [
    "Item 1",
    "Item 2",
    "Item 3",
    "Item 4",
    "Item 5",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drop Down in Flutter"),
      ),
      body: Container(
        child: DropdownButton(
          value: valueChoose,
          onChanged: (newValue) {
            setState(() {
              valueChoose = newValue;
            });
          },
          items: listItem.map((valueItem) {
            return DropdownMenuItem(
              value: valueItem,
              child: Text(valueItem),
            );
          }).toList(),
        ),
      ),
    );
  }
}
