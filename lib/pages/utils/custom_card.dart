import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {

  final String text;
  final String image;

   CustomCard({ this.text, this.image});
  

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6/3,
      child: Container(
        margin: EdgeInsets.only(right: 15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover
          )
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              stops: [0.1, 0.9],
              colors: [
                Color(0xFF3171ef).withOpacity(0.7),
                Color(0xFF3171ef).withOpacity(0.3),
              ]
            )
          ),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 10.0),
              child: Text(text , 
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width/40,
                color: Colors.white
              )),
            ),
          ),
        ),
      ),
    );
  }
}