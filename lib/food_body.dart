import 'package:flutter/material.dart';
import 'food_list.dart';
import 'my_instra_page.dart';


class FoodBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return new Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        // Expanded(flex: 1, child: new InstaStories()),
        Flexible(child: FoodList())
      ],
    );;
  }
}