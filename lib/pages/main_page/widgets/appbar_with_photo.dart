import 'package:animate_do/animate_do.dart';
import 'package:facebook_redesign/pages/profile_page/profile_page.dart';
import 'package:facebook_redesign/pages/utils/custom_icons.dart';
import 'package:flutter/material.dart';

class AppBarWithPhoto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        FadeInLeft(
          child: Padding(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width / 50,
                top: MediaQuery.of(context).size.width / 50),
            child: IconButton(
                icon: Icon(CustomIcons.facebook,
                    color: Color(0xFF3171ef),
                    size: MediaQuery.of(context).size.height / 25),
                onPressed: () {}),
          ),
        ),
        FadeInRight(
          child: Padding(
              padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width / 50,
                  top: MediaQuery.of(context).size.width / 50),
              child: Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context) => ProfilePage()));
                    },
                    child: Container(
                      height: 35.0,
                      width: 35.0,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 5.0,
                                spreadRadius: 2.0,
                                color: Colors.grey.withOpacity(0.5))
                          ],
                          borderRadius: BorderRadius.circular(100.0),
                          image: DecorationImage(
                              image: AssetImage('assets/jaqueline.jpg'),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  IconButton(
                      icon: Icon(CustomIcons.menu,
                          color: Color(0xff3171ef),
                          size: MediaQuery.of(context).size.height / 25),
                      onPressed: () {}),
                ],
              )),
        ),
      ],
    );
  }
}
