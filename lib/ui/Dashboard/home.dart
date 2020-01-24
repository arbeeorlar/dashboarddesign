

import 'package:dashboarddesign/widgets/favourite_selector.dart';

import '../../widgets/categoryselector.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
 
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 18.0,color: Colors.white);
int _currentIndex = 0;
var category = ["Messages","Online","Groups","Requests","News"];
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor:Theme.of(context).primaryColor,
       body: Column(
         children: <Widget>[
           CategorySelector(),
           Expanded(
            child: Container(
               decoration: BoxDecoration(
                 color: Colors.white60,
                 borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0),topRight: Radius.circular(30.0))
               ),
               child: Column(
                 children: <Widget>[
                   FavouriteSelector(),
                 ],
               ),
            ),
           )
         ],
       )
       );
  }
}