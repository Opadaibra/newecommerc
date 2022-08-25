
import 'package:flutter/material.dart';

class Customtitltetextauth extends StatelessWidget {
  const Customtitltetextauth({
    Key? key, required this.title,
  }) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headline2,
      textAlign: TextAlign.center,
    );
  }
}