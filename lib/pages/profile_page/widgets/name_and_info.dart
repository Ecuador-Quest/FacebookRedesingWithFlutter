import 'package:animate_do/animate_do.dart';
import 'package:facebook_redesign/pages/utils/custom_icons.dart';
import 'package:flutter/material.dart';

class NameAndDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 5.0),
        Text('Jaqueline Olly',
            style: TextStyle(
                fontSize: MediaQuery.of(context).size.width/17,
                color: Color(0xFF03224a),
                fontWeight: FontWeight.bold)),
        SizedBox(height: 7.0),
        FadeInUp(
          duration: Duration(milliseconds: 900),
          from: 15.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Journalist at',
                  style: TextStyle(
                      fontSize: 15.0,
                      color: Color(0xFF03224a),
                      fontWeight: FontWeight.bold)),
              SizedBox(width: 5.0),
              Text('Vogue',
                  style: TextStyle(
                      fontSize: 15.0,
                      color: Color(0xFF3171ef),
                      fontWeight: FontWeight.bold)),
              SizedBox(width: 20.0),
              Icon(CustomIcons.location, color: Color(0xFF03224a), size: 15.0),
              SizedBox(width: 3),
              Text('Paris, France',
                  style: TextStyle(
                      fontSize: 15.0,
                      color: Color(0xFF03224a),
                      fontWeight: FontWeight.bold)),
            ],
          ),
        )
      ],
    );
  }
}
