import 'package:facebook_redesign/pages/utils/custom_card.dart';
import 'package:flutter/material.dart';

class Carrusel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        CustomCard(image: "assets/jaqueline.jpg", text: " + Add story"),
        CustomCard(image: "assets/lisa.jpg", text: "Lisa Hayward"),
        CustomCard(image: "assets/andrew.jpg", text: "Andrew Fox"),
        CustomCard(image: "assets/jonas.jpg", text: "Jonas Bell")
      ],
   );
  }
}