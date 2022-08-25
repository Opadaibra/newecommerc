import 'package:ecommerc/Core/Constant/imageassets.dart';
import 'package:flutter/cupertino.dart';

class Logoauth extends StatelessWidget {
  final double logosize;
  const Logoauth({Key? key, this.logosize = 170}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppImageAsset.logo,
      height: logosize,
    );
  }
}
