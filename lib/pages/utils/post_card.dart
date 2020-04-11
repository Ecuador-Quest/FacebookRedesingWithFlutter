import 'package:flutter/material.dart';
import 'custom_icons.dart';

class PostCard extends StatelessWidget {
  final String profilePhoto;
  final String name;
  final String postPhoto;
  final String text;
  final String otherBlueText;
  final bool doubleBlueText;

  PostCard(
      {this.profilePhoto,
      this.name,
      this.text,
      this.doubleBlueText,
      this.postPhoto, this.otherBlueText});


  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 0.9,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 2.2,
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 5.0, left: 10.0),
                    child: Container(
                      height: 40.0,
                      width: 40.0,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 5.0,
                                spreadRadius: 2.0,
                                color: Colors.grey.withOpacity(0.5))
                          ],
                          borderRadius: BorderRadius.circular(100.0),
                          image: DecorationImage(
                              image: AssetImage(profilePhoto),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5.0, left: 5.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(name,
                                style: TextStyle(
                                    fontSize: 12.0,
                                    color: Color(0xFF3171ef),
                                    fontWeight: FontWeight.bold)),
                            SizedBox(width: 5.0),
                            Text(text,
                                style: TextStyle(
                                    color: Color(0xFF03224a), fontSize: 12.0)),
                            SizedBox(width: 5.0),
                            Text(doubleBlueText ? otherBlueText:'',
                                style: TextStyle(
                                    fontSize: 12.0,
                                    color: Color(0xFF3171ef),
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                        Text('Yesterdy, 9:37 PM',
                            style: TextStyle(
                                fontSize: 10.0, color: Colors.grey.shade600))
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 50),
              Expanded(
                  child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(postPhoto), fit: BoxFit.cover)),
              )),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Container(
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 15.0,
                        width: 15.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.red),
                        child: Icon(CustomIcons.heart,
                            size: 7.0, color: Colors.white),
                      ),
                      SizedBox(width: 1.0),
                      Container(
                        height: 15.0,
                        width: 15.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Color(0xFF3171ef),
                        ),
                        child: Icon(CustomIcons.like,
                            size: 7.0, color: Colors.white),
                      ),
                      SizedBox(width: 3.0),
                      Text('Andrew Fox & 124 other reacted to it',
                          style: TextStyle(
                              color: Colors.grey.shade600, fontSize: 10.0)),
                      Expanded(child: Container()),
                      Text('21 comments',
                          style: TextStyle(
                              color: Colors.grey.shade600, fontSize: 10.0))
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
