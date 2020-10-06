import 'package:flutter/material.dart';

import '../../../size_config.dart';

class RoundedTextField extends StatelessWidget {
  const RoundedTextField({
    Key key,
    this.initialValue,
    this.hintText,
  }) : super(key: key);

  final String initialValue, hintText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          hintText,
          style: TextStyle(color: Colors.white60),
        ),
        VerticalSpacing(of: 10),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              width: 2,
              color: Colors.black.withOpacity(0.1),
            ),
          ),
          child: TextField(
            style: TextStyle(color: Colors.white),
            controller: TextEditingController(text: initialValue),
            decoration: InputDecoration(
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}
