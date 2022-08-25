import 'package:flutter/material.dart';

class Custombodyauth extends StatelessWidget {
  const Custombodyauth({
    Key? key,
    required this.body,
  }) : super(key: key);
  final String body;
  @override
  Widget build(BuildContext context) {
    return Text(
      body,
      style: Theme.of(context).textTheme.bodyText2,
      textAlign: TextAlign.center,
    );
  }
}
