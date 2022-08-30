// ignore_for_file: file_names

import 'package:ecommerc/data/datasource/static/color.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hinttext;
  final String labeltext;
  final IconData iconData;
  final TextEditingController mycontroller;
  final TextInputType textInputType;
  final bool obs;
  final String? Function(String?) valid;
  final void Function()? ontapicon;
  const CustomTextField(
      {Key? key,
      required this.hinttext,
      required this.labeltext,
      required this.iconData,
      required this.mycontroller,
      required this.valid,
      required this.textInputType,
      this.obs = false,
      this.ontapicon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
        keyboardType: textInputType,
        validator: valid,
        cursorColor: AppColor.primary,
        decoration: InputDecoration(
          label: Container(
            margin: const EdgeInsets.symmetric(horizontal: 9),
            child: Text(
              labeltext,
              style: const TextStyle(color: AppColor.primary),
            ),
          ),
          hintText: hinttext,
          hintStyle: const TextStyle(fontSize: 14),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
          suffixIcon: IconButton(
            splashRadius: 20,
            onPressed: ontapicon,
            icon: Icon(
              iconData,
              color: AppColor.primary,
            ),
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(color: AppColor.grey)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(color: AppColor.primary)),
        ),
        obscureText: obs,
      ),
    );
  }
}
