import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class Photo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        FadeInUp(
          duration: Duration(milliseconds: 900),
          from: 50.0,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('720',
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height / 30,
                      color: Color(0xFF03224a),
                      fontWeight: FontWeight.bold)),
              Text('firiends',
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height / 50,
                      color: Color(0xFF03224a),
                      fontWeight: FontWeight.bold))
            ],
          ),
        ),
        FadeInDown(
          duration: Duration(milliseconds: 900),
          child: Container(
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    offset: Offset(3, 8),
                    blurRadius: 6.0,
                    spreadRadius: 3.0,
                    color: Color.fromRGBO(0, 0, 0, 0.2)),
                  BoxShadow(
                    offset: Offset(-3, -8),
                    blurRadius: 1.0,
                    spreadRadius: 0.0,
                    color:  Color.fromRGBO(255, 255, 255, 1)
                  )    
                ],
                borderRadius: BorderRadius.circular(500.0),
                image: DecorationImage(
                    image: AssetImage('assets/jaqueline.jpg'),
                    fit: BoxFit.cover)),
            height: 90.0,
            width: 90.0,
          ),
        ),
        FadeInUp(
          from: 50.0,
          duration: Duration(milliseconds: 900),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('120',
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height / 30,
                      color: Color(0xFF03224a),
                      fontWeight: FontWeight.bold)),
              Text('groups',
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height / 50,
                      color: Color(0xFF03224a),
                      fontWeight: FontWeight.bold))
            ],
          ),
        )
      ],
    ));
  }
}
