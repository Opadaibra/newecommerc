import 'package:ecommerc/data/datasource/static/color.dart';
import 'package:flutter/material.dart';

class Buttonlang extends StatelessWidget {
  const Buttonlang({Key? key, required this.onPressed, required this.textbutton})
      : super(key: key);
  final String textbutton;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 100),
        width: double.infinity,
        child: MaterialButton(
          color: AppColor.primary,
          onPressed: onPressed,
          textColor: AppColor.backGround,
          child: Text(
            textbutton,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ));
  }
}
