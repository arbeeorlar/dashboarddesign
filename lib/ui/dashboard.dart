
import 'package:flutter/material.dart';

import 'Dashboard/home.dart';
import 'Dashboard/profile.dart';
import 'Dashboard/settings.dart';

class DashboardPage  extends StatefulWidget {
  @override
  _DashboardStatePage createState() => _DashboardStatePage();
}

class _DashboardStatePage extends State<DashboardPage> {

int _currentIndex = 0;
final List<Widget> _children = [HomePage(),ProfilePage(),SettingPage()];


OnTapClickEvent(int  index){
    setState(() {
         _currentIndex =  index ;
    });
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: backButton(),
        body: _children[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex, // this will be set when a new tab is tapped
        onTap: OnTapClickEvent,
       items: [
         BottomNavigationBarItem(
           icon: new Icon(Icons.home),
           title: new Text('Home'),
         ),
         BottomNavigationBarItem(
           icon: new Icon(Icons.mail),
           title: new Text('Profile'),
         ),
            BottomNavigationBarItem(
             
              icon: Icon(Icons.person),
              title: Text('Settings')
            ),
             
          ],
        ),
    );
  }


   AppBar backButton() {
    return AppBar(
            leading: IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                },
                ),
          title: 
              Text("BankOne",
              style: TextStyle(fontWeight:FontWeight.bold,fontSize: 18,fontStyle: FontStyle.normal),
              ),
              elevation: 0.0,
               actions: <Widget>[
                 IconButton(
                   icon: Icon(Icons.search),
                    onPressed: () {
    
                   },
             ),
           ],
           
      );
  }
}