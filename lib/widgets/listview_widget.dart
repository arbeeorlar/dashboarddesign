
import 'package:flutter/material.dart';

class ListViewWidget extends StatefulWidget {
 
  @override
  _ListViewWidget createState() => _ListViewWidget();
}

class _ListViewWidget extends State<ListViewWidget> {
 TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 18.0,color: Colors.white);
int _currentIndex = 0;
var category = ["Messages","Online","Groups","Requests","News"];
 

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80,
        color: Theme.of(context).primaryColor,
        child: ListView.builder(
         itemCount: category.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context,int index){
             return GestureDetector(
               onTap: (){
                 setState(() {
                   _currentIndex = index ;
                 });
               },
             child: Padding(
                  padding: EdgeInsets.symmetric(
                 horizontal: 20.0,
                 vertical: 30.0
               ),
              child: Text(
                category[index],
                style:TextStyle(fontFamily: 'Montserrat', fontSize: 18.0,color: index == _currentIndex? Colors.white:Colors.white30),
              ),
             )
             );
          },
          ),
       );
  }
}