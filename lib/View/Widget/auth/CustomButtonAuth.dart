// ignore_for_file: file_names
import 'package:ecommerc/data/datasource/static/color.dart';
import 'package:flutter/material.dart';

class Customauthbutton extends StatelessWidget {
  const Customauthbutton({
    Key? key,
    required this.text,
    this.color = AppColor.primary,
    required this.onPressed,
  }) : super(key: key);
  final String text;
  final Color color;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: Material(
        color: color,
        borderRadius: BorderRadius.circular(30),
        child: MaterialButton(
          onPressed: onPressed,
          textColor: Colors.white,
          child: Text(text),
        ),
      ),
    );
  }
}
