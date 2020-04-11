import 'package:animate_do/animate_do.dart';
import 'package:facebook_redesign/pages/profile_page/widgets/buttons_row.dart';
import 'package:facebook_redesign/pages/profile_page/widgets/custom_app_bar.dart';
import 'package:facebook_redesign/pages/profile_page/widgets/name_and_info.dart';
import 'package:facebook_redesign/pages/profile_page/widgets/photo.dart';
import 'package:facebook_redesign/pages/utils/custom_card.dart';
import 'package:facebook_redesign/pages/utils/post_card.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: 
              Stack(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height/2.6,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/jaqueline.jpg'),
                      fit: BoxFit.cover
                  )),
                  child: Container(
                    alignment: Alignment.topCenter,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.white.withOpacity(1),
                          Colors.white.withOpacity(0.9),
                          Colors.white.withOpacity(0.9),
                          Colors.white.withOpacity(0.9),
                          Colors.white.withOpacity(0.9),
                          Colors.white.withOpacity(0.9),
                          Colors.white.withOpacity(0.7),
                          Color(0xFFb6c7de).withOpacity(0.8)
                        ]
                      )
                    ),
                    child: Column(
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                          CustomAppBar(),
                          Padding(
                              padding: EdgeInsets.only(top: 40.0),
                              child: Photo())
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 15.0),
                          child: NameAndDetails(),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.height/2.3),
                  child: Container(
                  width: double.infinity,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height:  MediaQuery.of(context).size.height/50),
                      FadeInLeft(
                        duration: Duration(milliseconds: 900),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/15),
                          child: Text("Jaquelines's highlights" , 
                          style: TextStyle(
                            fontSize:  MediaQuery.of(context).size.width/25,
                            color: Color(0xFF03224a),
                            fontWeight: FontWeight.bold
                          )),
                        ),
                      ),
                      SizedBox(height:  MediaQuery.of(context).size.height/50),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/15),
                        child: Container(
                          height:MediaQuery.of(context).size.height/6,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              FadeInUp(
                                child: CustomCard(image: "assets/dog.jpg", text: "My dog"),
                                from: 10.0,
                                duration: Duration(milliseconds: 1000),
                              ),
                              FadeInUp(
                                child: CustomCard(image: "assets/paris.jpg", text: "Paris"),
                                from: 10.0,
                                duration: Duration(milliseconds: 1300),
                              ),
                              FadeInUp(
                                child: CustomCard(image: "assets/wedding.jpg", text: "Our Wedding"),
                                from: 10.0,
                                duration: Duration(milliseconds: 1600),
                              ),
                              FadeInUp(
                                child: CustomCard(image: "assets/riviera.jpg", text: "French Riviera"),
                                from: 10.0,
                                duration: Duration(milliseconds: 1900),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height:  MediaQuery.of(context).size.height/50),
                      FadeInUp(
                        duration: Duration(milliseconds: 900),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/15),
                          child: Text("Latest activity" , 
                          style: TextStyle(
                            fontSize:  MediaQuery.of(context).size.width/25,
                            color: Color(0xFF03224a),
                            fontWeight: FontWeight.bold
                          )),
                        ),
                      ),
                      SizedBox(height:  MediaQuery.of(context).size.height/50),
                      FadeInUp(
                        duration: Duration(milliseconds: 900),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/15),
                          child:  PostCard(
                            profilePhoto: 'assets/jaqueline.jpg',
                            name: 'Jaqueline ',
                            postPhoto: 'assets/wedding.jpg',
                            text: 'created new Album',
                            doubleBlueText: true,
                            otherBlueText: 'Our wedding',
                          ),
                        ),
                      ),
                      SizedBox(height:  MediaQuery.of(context).size.height/50),

                    ],
                  ),
                )),
                Positioned(
                width: MediaQuery.of(context).size.width,
                top: MediaQuery.of(context).size.height/2.8,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/15),
                  child: ButtonsRow()
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}



