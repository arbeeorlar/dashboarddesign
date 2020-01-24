

import 'package:flutter/material.dart';
import './dashboard.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {

 double height = MediaQuery.of(context).size.height;
   double width = MediaQuery.of(context).size.width;
   TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
    final emailTextField =  TextField(
      obscureText: false,
          style: style,
          onChanged: (text){
             
          },
          decoration: InputDecoration(
              fillColor: Colors.black,
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              hintText: "Username:",
              border:OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))
              ),
    ); 
    

    final passwordTextField = TextField(
      
      obscureText: true,
          style: style,
          onChanged: (text){
             
          },
      
          decoration: InputDecoration( 
            fillColor: Colors.black,
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              hintText: "Password:",
              border:OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))),
    ); 
    
     final loginButon = Material(
          elevation: 5.0,
          borderRadius: BorderRadius.circular(30.0),
          color: Color(0xff01A0C7),
          child: MaterialButton(
            minWidth: MediaQuery.of(context).size.width,
            padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            onPressed: () {

                 Route route = MaterialPageRoute(builder: (context) => DashboardPage());
                 Navigator.push(context, route);
            },
            child: Text("Login",
                textAlign: TextAlign.center,
                style: style.copyWith(
                    color: Colors.white, fontWeight: FontWeight.bold)),
                   
          ),
        );
    


    return Scaffold(
    body: Stack(
      children: <Widget>[
         Container(
           
           decoration: BoxDecoration(
                image: DecorationImage(
                   image: AssetImage("assets/images/bg_choose_customer.png"),
                   fit: BoxFit.fill,
                )
              ),
         ),
         
            Container(
                padding: const EdgeInsets.only(right: 20,left: 20),
                margin: const EdgeInsets.only(bottom: 20),
                child: Column(
                   crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                        SizedBox(
                                      height: 140.0,
                                      width: 140.0,
                                      child: Image.asset(
                                        "assets/images/lion_head.png",
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                        emailTextField,
                                   SizedBox(height: 20,),
                                   passwordTextField,
                                   SizedBox(height: 50,),
                                   loginButon,
                                  SizedBox(height: 60,),
                              
                           Text("Don't have an account,Click here",
                                  textAlign: TextAlign.center,
                                  style: style.copyWith(
                                  color: Colors.grey, fontSize: 17, fontWeight: FontWeight.normal)
                                  ),
                                  
                    ],
                ),
          )   
      ],
    ),
    );
  }
}