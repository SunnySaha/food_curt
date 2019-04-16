import 'package:flutter/material.dart';
import 'food_body.dart';


class MyInstra_Page extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {

    return MyInstra_PageState();
  }

}

class MyInstra_PageState extends State<MyInstra_Page>{

  final topBar = new AppBar(
    backgroundColor: new Color(0xFFFF7043),
    centerTitle: true,
    elevation: 1.0,
    leading: new Icon(Icons.add),
    title: Text("Food Curt" , ),
    actions: <Widget>[
      Padding(
        padding: const EdgeInsets.only(right: 12.0),
        child: Icon(Icons.check_box),
      )
    ],
  );
  @override
  Widget build(BuildContext context) {


    return Scaffold(

      appBar: topBar,
      body: FoodBody(),
      bottomNavigationBar:  new Container(
        color: Colors.white,
        height: 50.0,
        alignment: Alignment.center,
        child: new BottomAppBar(
        child: new Row(
        // alignment: MainAxisAlignment.spaceAround,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
        new IconButton(
        icon: Icon(
        Icons.home,
    ),
    onPressed: () {},
    ),
    new IconButton(
    icon: Icon(
    Icons.search,
    ),
    onPressed: null,
    ),
    new IconButton(
    icon: Icon(
    Icons.add_box,
    ),
    onPressed: null,
    ),
    new IconButton(
    icon: Icon(
    Icons.favorite,
    ),
    onPressed: null,
    ),
    new IconButton(
    icon: Icon(
    Icons.account_box,
    ),
    onPressed: null,
    ),
    ],
    ),
    ),

    ),
    );
  }

}