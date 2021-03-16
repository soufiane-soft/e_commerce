import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key key,
    @required this.buttonname,
    this.onPressed,
  }) : super(key: key);

  final String buttonname;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        width: size.width * 0.9,
        height: 45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.red[600]
        ),
        child: TextButton(
          onPressed: onPressed,
          child: Text(buttonname, style: TextStyle(color: Colors.white, fontSize: 18)),
        ),
      );
  }
}