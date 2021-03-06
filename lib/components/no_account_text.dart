import 'package:flutter/material.dart';
import 'package:uniapp/screens/sign_up/sign_up_screen.dart';

import '../constants.dart';
import '../size_config.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "You don't have an account? ",
          style: TextStyle(fontSize: getProportionateScreenWidth(12),
            fontFamily: "Open_Sans",),

        ),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, SignUpScreen.routeName),
          child: Text(
            "Sign in",
            style: TextStyle(
                fontSize: getProportionateScreenWidth(12),
                fontFamily: "Open_Sans",
                color: kPrimaryColor),
          ),
        ),
      ],
    );
  }
}
