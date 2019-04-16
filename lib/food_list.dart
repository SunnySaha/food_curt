import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'food_choice.dart';

class FoodList extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {

    return _MyFoodList();
  }

}

class _MyFoodList extends State<FoodList>{

  _MyFoodList({@required this.onPressed});
  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    //var deviceSize = MediaQuery.of(context).size;
    return ListView.builder(

      itemCount: 5,
      itemBuilder: (context, index) => index == 0
          ? new SizedBox(
        child: new FoodChoice(),
       // height: deviceSize.height * 0.30,
      )
          : Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 16.0, 8.0, 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    new Container(
                      height: 40.0,
                      width: 40.0,
                      decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                            fit: BoxFit.fill,
                            image: new NetworkImage(
                                "https://pbs.twimg.com/profile_images/916384996092448768/PF1TSFOE_400x400.jpg")),
                      ),
                    ),
                    new SizedBox(
                      width: 10.0,
                    ),
                    new Text(
                      "imthpk",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                new IconButton(
                  icon: Icon(Icons.more_vert),
                  onPressed: null,
                )
              ],
            ),
          ),
          Flexible(
            fit: FlexFit.loose,
            child: new Image.asset(
              'picture_asset/food_image.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Icon(
                      Icons.rate_review
                    ),
                    new SizedBox(
                      width: 16.0,
                    ),
                    new Icon(
                      Icons.favorite_border
                    ),
                    new SizedBox(
                      width: 16.0,
                    ),
                    new Icon(Icons.message),
                    new SizedBox(
                      width: 16.0,
                    ),
                    new RaisedButton(

                        splashColor: Colors.blue,
                        child: Padding(padding:
                        const EdgeInsets.symmetric(
                          vertical: 8.0,
                          horizontal: 10.0,
                        ),

                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: const <Widget>[
                              Icon(
                                Icons.explore,
                                color: Colors.amber,
                              ),
                              SizedBox(width:8.0),
                              Text("Add To Cart",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],

                          ),


                        ),

                        onPressed: onPressed,
                        shape: const StadiumBorder(),
                    )
                  ],
                ),

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              "Liked by more than 2k",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 16.0, 0.0, 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Container(
                  height: 40.0,
                  width: 40.0,
                  decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                        fit: BoxFit.fill,
                        image: new NetworkImage(
                            "https://pbs.twimg.com/profile_images/916384996092448768/PF1TSFOE_400x400.jpg")),
                  ),
                ),
                new SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: new TextField(
                    decoration: new InputDecoration(
                      border: InputBorder.none,
                      hintText: "Add a comment...",
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child:
            Text("1 Day Ago", style: TextStyle(color: Colors.grey)),
          )
        ],
      ),
    );;
  }

}