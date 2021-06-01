import 'package:flutter/material.dart';

class Phoenix extends StatefulWidget {
  @override
  _DropDownButtonTestState createState() => _DropDownButtonTestState();
}

class _DropDownButtonTestState extends State<Phoenix> {
  String type;
  List size = [
    "20 GP",
    "40 HQ"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drop Down in Flutter"),
      ),
      body: Container(
        child: DropdownButton(
          value: type,
          onChanged: (newValue) {
            setState(() {
              type = newValue;
            });
          },
          items: size.map((valueItem) {
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
