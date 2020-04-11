import 'package:animate_do/animate_do.dart';
import 'package:facebook_redesign/pages/utils/custom_icons.dart';
import 'package:flutter/material.dart';

class ButtonsRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        FadeInLeft(
          duration: Duration(seconds: 1),
          child: Material(
            borderRadius: BorderRadius.circular(10.0),
            elevation: 7.0,
            child: Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width / 2,
              height: MediaQuery.of(context).size.width / 9,
              decoration: BoxDecoration(
                color: Color(0xFF3171ef),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Icon(CustomIcons.messenger, color: Colors.white, size: 20.0),
                  SizedBox(width: 10.0),
                  Text('Message',
                      style: TextStyle(fontSize: 15.0, color: Colors.white))
                ],
              ),
            ),
          ),
        ),
        FadeInRight(
           duration: Duration(seconds: 1),
          child: Material(
            borderRadius: BorderRadius.circular(10.0),
            elevation: 7.0,
            child: Container(
              width: MediaQuery.of(context).size.width / 7,
              height: MediaQuery.of(context).size.width / 9,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: IconButton(
                  icon: Icon(
                    CustomIcons.user,
                    color: Color(0xFF3171ef),
                    size: 20.0,
                  ),
                  onPressed: () {}),
            ),
          ),
        ),
        FadeInRight(
            duration: Duration(seconds: 1),
          child: Material(
            borderRadius: BorderRadius.circular(10.0),
            elevation: 7.0,
            child: Container(
              width: MediaQuery.of(context).size.width / 7,
              height: MediaQuery.of(context).size.width / 9,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: IconButton(
                  icon: Icon(CustomIcons.points,
                      color: Colors.grey.shade600, size: 20.0),
                  onPressed: () {}),
            ),
          ),
        ),
      ],
    );
  }
}
