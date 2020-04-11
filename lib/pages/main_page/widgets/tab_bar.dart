import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class CustomTabBar extends StatefulWidget {

  final List<Widget> pages;

  CustomTabBar({this.pages});



  @override
  _CustomTabBarState createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  

 
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: FadeInRight(
          delay: Duration(milliseconds: 700),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height/13,
            child: Scaffold(
                appBar: TabBar(
                isScrollable: true,
                labelColor: Color(0xFF03224a),
                indicatorColor: Color(0xFF3171ef),
                unselectedLabelColor: Colors.grey.shade600,
                indicatorSize: TabBarIndicatorSize.label,
                labelStyle: TextStyle(color: Color(0xFF03224a), fontSize: 15.0),
                tabs: <Widget>[
                  Tab(
                    text: 'your news feed',
                  ),
                  Tab(
                    text: 'people you may know',
                  ),
                  Tab(
                    text: 'groups',
                  ),
                ],
              ),
              body: TabBarView(
                children: widget.pages
            ),
          )
      ),
        )
    );
  }
}