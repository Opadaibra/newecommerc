import 'package:ecommerc/View/Widget/auth/CustomButtonAuth.dart';
import 'package:ecommerc/data/datasource/static/color.dart';
import 'package:flutter/material.dart';

class SuccessSignup extends StatelessWidget {
  const SuccessSignup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
      const Icon(
        Icons.check_circle_outline,
        color: AppColor.primary,
        size: 200,
      ),
      Center(
        child: Text(
          "Done Sign Up!",
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      const SizedBox(
        height: 30,
      ),
      Container(
          margin: const EdgeInsets.symmetric(horizontal: 30),
          width: double.infinity,
          child: Customauthbutton(text: "Go to Sign In", onPressed: () {}))
        ],
      ),
    );
  }
}
