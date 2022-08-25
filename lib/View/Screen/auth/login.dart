import 'package:ecommerc/View/Widget/auth/CustomTextField.dart';
import 'package:ecommerc/View/Widget/auth/customtitleauth.dart';
import 'package:ecommerc/View/Widget/auth/logoauth.dart';
import 'package:ecommerc/data/datasource/static/color.dart';
import 'package:flutter/material.dart';
import '../../Widget/auth/customtexttbodyauth.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    return Scaffold(
        appBar: AppBar(
          title: Text("Sign In",
              style: Theme.of(context)
                  .textTheme
                  .headline1!
                  .copyWith(color: AppColor.grey)),
          centerTitle: true,
          backgroundColor: AppColor.backGround,
          elevation: 0,
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          child: ListView(
            children: [
              const Logoauth(),
              const SizedBox(
                height: 20,
              ),
              const Customtitltetextauth(
                title: "Welcom Back",
              ),
              const SizedBox(
                height: 10,
              ),
              const Custombodyauth(
                body:
                    "Sign in with Your Email And Password OR Continue With Social Media",
              ),
              const SizedBox(
                height: 70,
              ),
              CustomTextField(
                hinttext: "Enter Your Email",
                labeltext: "Email",
                iconData: Icons.email_outlined,
                mycontroller: email,
              ),
              CustomTextField(
                hinttext: "Enter Your Password",
                labeltext: "Password",
                iconData: Icons.lock_outline,
                mycontroller: password,
              )
            ],
          ),
        ));
  }
}
