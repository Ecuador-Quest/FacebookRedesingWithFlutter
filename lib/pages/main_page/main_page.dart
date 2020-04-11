
import 'package:animate_do/animate_do.dart';
import 'package:facebook_redesign/pages/main_page/widgets/appbar_with_photo.dart';
import 'package:facebook_redesign/pages/main_page/widgets/carrusel.dart';
import 'package:facebook_redesign/pages/main_page/widgets/name_and_search.dart';
import 'package:facebook_redesign/pages/main_page/widgets/tab_bar.dart';
import 'package:facebook_redesign/pages/utils/post_card.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {

  

  
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

 

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height/2.6,
                  decoration: BoxDecoration(),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        top: -30.0,
                        left: MediaQuery.of(context).size.width/1.5,
                        child: Container(
                          height: 70.0,
                          width: 70.0,
                          decoration: BoxDecoration(
                            color: Color(0xFFd7d9f5),
                            borderRadius: BorderRadius.circular(100.0)

                          ),
                        ),
                      ),
                      Positioned(
                        top: 50.0,
                        left: MediaQuery.of(context).size.width/4,
                        child: Container(
                          height: 110.0,
                          width: 110.0,
                          decoration: BoxDecoration(
                            color: Color(0xFFd7d9f5),
                            borderRadius: BorderRadius.circular(100.0)

                          ),
                        ),
                      ),
                      Positioned(
                        top: 10.0,
                        left: MediaQuery.of(context).size.width/1.2,
                        child: Container(
                          height: 200.0,
                          width: 200.0,
                          decoration: BoxDecoration(
                            color: Color(0xFFd7d9f5),
                            borderRadius: BorderRadius.circular(100.0)
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topCenter,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.white.withOpacity(0.1),
                              Colors.white.withOpacity(0.1),
                              Color(0xFFb6c7de).withOpacity(0.8)
                            ]
                          )
                        ),
                        child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          AppBarWithPhoto(),
                          Padding(
                            padding:  EdgeInsets.symmetric(horizontal:  MediaQuery.of(context).size.width/17),
                            child: NameAndSearch(),
                          )
                          
                          ],
                        ),
                  ),
                  ],
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height/2.1 ,
                    bottom:MediaQuery.of(context).size.height/50 ),
                    child: Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height*1.1,
                      child: CustomTabBar(
                        pages: <Widget>[
                          FadeInUp(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/15),
                              child: Column(
                                  children: <Widget>[
                                    SizedBox(height: MediaQuery.of(context).size.width/30),
                                    PostCard(
                                      profilePhoto: 'assets/lisa.jpg',
                                      name: 'Lisa Hayward',
                                      postPhoto: 'assets/cover_photo.jpg',
                                      text: 'updated her cover photo',
                                      doubleBlueText: false,
                                    ),
                                     SizedBox(height: MediaQuery.of(context).size.width/30),
                                    PostCard(
                                      profilePhoto: 'assets/jaqueline.jpg',
                                      name: 'Jaqueline',
                                      postPhoto: 'assets/wedding.jpg',
                                      text: 'created new Album',
                                      doubleBlueText: true,
                                      otherBlueText: 'Our wedding',
                                    ),
                                  ],
                                ),
                            ),
                          ),
                          Center(child: Text('people you may know')),
                          Center(child: Text('groups'))
                        ],
                      )
                    ),
                ),
              
                Positioned(
                width: MediaQuery.of(context).size.width,
                top: MediaQuery.of(context).size.height/3.5,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/15),
                  child: Container(
                    height: MediaQuery.of(context).size.height/5.5,
                    width: double.infinity,
                    child: FadeInRight(
                      duration: Duration(seconds: 2),
                      child: Carrusel()
                    )
                  )
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}


