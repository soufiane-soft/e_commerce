
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputTextField extends StatelessWidget {
  const InputTextField({
    Key key,
    this.hint,
    this.icon,
    this.type,
    this.action,
  }) : super(key: key);
  final String hint;
  final Icon icon;
  final TextInputType type;
  final TextInputAction action;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric( vertical : 10 ),
      child: Container(
        height: 60,
        width: size.width * 0.9,
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(8)
        ),
        child: Center(
          child: TextField(
            decoration: InputDecoration( 
              border: InputBorder.none,
              prefixIcon: icon,
              hintText: hint,
            ),
            keyboardType: type,
            textInputAction: action,
          ),
        ),
      )
    );
  }
}