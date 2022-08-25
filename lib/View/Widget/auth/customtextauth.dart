import 'package:flutter/material.dart';
import 'package:ecommerc/data/datasource/static/color.dart';

class CustomTextauth extends StatelessWidget {
  const CustomTextauth({
    Key? key, required this.text1, required this.text2, required this.onTap,
  }) : super(key: key);
  final String text1;
  final String text2;
   final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:  [
        Text(text1),
        InkWell(
          onTap: onTap,
          child: Text(
            text2,
            style: const TextStyle(color: AppColor.primary),
          ),
        )
      ],
    );
  }
}
