import 'package:animate_do/animate_do.dart';
import 'package:facebook_redesign/pages/utils/custom_icons.dart';
import 'package:flutter/material.dart';

class NameAndSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        FadeInLeft(
          child: Text('Hello, Jaqueline!' , style: TextStyle(
            fontSize: MediaQuery.of(context).size.width/18,
            color: Color(0xFF03224a),
            fontWeight: FontWeight.bold
          )),
        ),
        SizedBox(height: 20.0),
        FadeInUp(
          child: Material(
            elevation: 10.0,
            borderRadius: BorderRadius.circular(5.0),
            child: TextField(
              decoration: InputDecoration(
                suffixIcon: Icon(CustomIcons.points),
                contentPadding: EdgeInsets.symmetric(horizontal: 30.0 , vertical: 15.0),
                hintText: "What's on your mind?",
                hintStyle: TextStyle(
                      fontSize: 15.0,
                      color: Color(0xFF03224a),
                      fontWeight: FontWeight.w500)
              ),
            ),
          ),
        )
        
      ],
    );
  }
}