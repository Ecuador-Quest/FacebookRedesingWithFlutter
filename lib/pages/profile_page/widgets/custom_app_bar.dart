import 'package:facebook_redesign/pages/utils/custom_icons.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width / 50,
              top: MediaQuery.of(context).size.width / 50),
          child: IconButton(
              icon: Icon(CustomIcons.facebook,
                  color: Color(0xFF3171ef),
                  size: MediaQuery.of(context).size.height / 25),
              onPressed: () {}),
        ),
        Padding(
          padding: EdgeInsets.only(
              right: MediaQuery.of(context).size.width / 50,
              top: MediaQuery.of(context).size.width / 50),
          child: IconButton(
              icon: Icon(CustomIcons.menu,
                  color: Color(0xFF3171ef),
                  size: MediaQuery.of(context).size.height / 25),
              onPressed: () {}),
        ),
      ],
    );
  }
}
