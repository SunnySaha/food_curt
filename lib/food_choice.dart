import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;


class FoodChoice extends StatelessWidget{

  Future<List<userList>> _getUserList() async{

    //String url = "https://www.duare.net/api/res_list.php?fbclid=IwAR3C3QcINnWsmJrBquHtoS3C-2eBkWRhJwip8H1ndhq-TsPcLmFP7ylelBk";
    String url = "https://www.json-generator.com/api/json/get/cfwZmvEBbC?indent=2";
    var data= await http.get(url);//collect data from url

    var jsonDataObject = json.decode(data.body);//convert the data into object from json

    List<userList> User =[];

    for(var i in jsonDataObject){
      //userList userlist = userList(i["restaurant_list"]);
      userList userlist = userList(i["index"],i["name"], i["about"],i["email"], i["picture"] );
      //userList userlist = userList(i["id"], i["name"], i["description"], i["address"], i["logo"], i["ratting"], i["deliver_time"], i["cover_img"]);
      User.add(userlist); //adding data in list
    }//end of for loop
    return User;
  }//future getUserL


  @override
  Widget build(BuildContext context) {

    return new Container(
      height: 200.0,
      child: FutureBuilder(
        future: _getUserList(),
        builder: (BuildContext context, AsyncSnapshot snapshot){
          return ListView.builder(
              scrollDirection:Axis.horizontal,
              itemCount: snapshot.data.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  width: 160.0,


                  child: Card(


                    child: Wrap(
                      children: <Widget>[
                        Image.network(snapshot.data[index].picture),
                        Text(snapshot.data[index].name),
                        Text(snapshot.data[index].email)
                      ],
                    ),
                  ),
                );

              }
          );



        },//end of builder
      ),
    );
  }


}


class userList{

  final int index;
  final String  name, about, email, picture;
  userList( this.index, this.name, this.about, this.email, this.picture);
}