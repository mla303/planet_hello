import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_country_picker/flutter_country_picker.dart';
import 'package:page_transition/page_transition.dart';
import 'package:planet_hello/screens/contactUs.dart';
import 'package:planet_hello/screens/legal.dart';
import 'package:planet_hello/screens/privcyPolicy.dart';
import 'package:planet_hello/screens/profile.dart';
import 'package:planet_hello/screens/suggestion.dart';
import 'package:planet_hello/widgets/drawer.dart';
import 'package:planet_hello/widgets/styles.dart';

import '../presentation/homePage.dart';
import 'styles.dart';
import 'styles.dart';
import 'styles.dart';
import 'styles.dart';



class myDrawer extends StatefulWidget {
  @override
  _myDrawerState createState() => new _myDrawerState();
}

class _myDrawerState extends State<myDrawer> {









  @override
  Widget build(BuildContext context) {


    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;



    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: AppBar(
          centerTitle: true,
          automaticallyImplyLeading: false,
          backgroundColor: basicColor,
          title:  Text(
            "Menu",
            style: TextStyle(color: Colors.white, fontSize: 18.0),
          ),

          shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50))),
          iconTheme: IconThemeData(color: Colors.white),
        ),
      ),

      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xffFFFFFF),
                  image: new DecorationImage(
                      fit: BoxFit.cover,
                      colorFilter: new ColorFilter.mode(Colors.white.withOpacity(0.1), BlendMode.dstATop),
                      image: AssetImage("assets/background_image.png")
                  )
              ),
            ),
            Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[

                Expanded(
                  flex: 1,
                  child: Container(
                    width:  MediaQuery.of(context).size.width/1.2,
                    // height: height/20,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: GestureDetector(
                        onTap: ()
                        {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.close
                        ),
                      ),
                    ),
                  ),
                ),

                Expanded(
                  flex: 8,
                  child: Container(
                    width: MediaQuery.of(context).size.width/1.2,
                    child: Column(
                      children: [

                        //home
                        Container(
                          width: MediaQuery.of(context).size.width/1.2,
                          height: MediaQuery.of(context).size.height/18,
                          child: RaisedButton(
                            color: Colors.grey[200],
                            shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
    side: BorderSide(
    color: Colors.grey[200],
    )),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: new Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              // mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                new Icon(Icons.home,color: basicColor,size: 20,),
                                SizedBox(width: 20,),
                                new Text(
                                  "Home",
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.grey[600]
                                  ),
                                  textAlign: TextAlign.start,
                                ),

                              ],
                            ),
                          ),
                        ),


                        SizedBox(height: 15,),

                        //suggestion
                        Container(
                          width: MediaQuery.of(context).size.width/1.2,
                          height: MediaQuery.of(context).size.height/18,
                          child: RaisedButton(
                            color: Colors.grey[200],
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                side: BorderSide(
                                  color: Colors.grey[200],
                                )),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                    curve: Curves.fastOutSlowIn,
                                    type: PageTransitionType.rightToLeft,
                                    duration: Duration(milliseconds: 1000),
                                    alignment: Alignment.topCenter,
                                    child: suggestion(),
                                  ));
                            },
                            child: new Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              // mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                new Icon(Icons.receipt,color: basicColor,size: 20,),
                                SizedBox(width: 20,),
                                new Text(
                                  "Suggestion",
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      color: Colors.grey[600]
                                  ),
                                  textAlign: TextAlign.start,
                                ),

                                SizedBox(width: width/3.4,),
                                new Text(
                                  "Today 2",
                                  style: TextStyle(
                                      fontSize: 10.0,
                                      color: basicColor,
                                    fontStyle: FontStyle.italic
                                  ),
                                  textAlign: TextAlign.end,

                                ),
                              ],
                            ),
                          ),
                        ),


                        SizedBox(height: 15,),

                        //profile
                        Container(
                          width: MediaQuery.of(context).size.width/1.2,
                          height: MediaQuery.of(context).size.height/18,
                          child: RaisedButton(
                            color: Colors.grey[200],
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                side: BorderSide(
                                  color: Colors.grey[200],
                                )),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                    curve: Curves.fastOutSlowIn,
                                    type: PageTransitionType.rightToLeft,
                                    duration: Duration(milliseconds: 1000),
                                    alignment: Alignment.topCenter,
                                    child: profile(),
                                  ));
                            },
                            child: new Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              // mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                new Icon(Icons.person,color: basicColor,size: 20,),
                                SizedBox(width: 20,),
                                new Text(
                                  "Profile",
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      color: Colors.grey[600]
                                  ),
                                  textAlign: TextAlign.start,
                                ),

                              ],
                            ),
                          ),
                        ),


                        SizedBox(height: 15,),

                        //legal
                        Container(
                          width: MediaQuery.of(context).size.width/1.2,
                          height: MediaQuery.of(context).size.height/18,
                          child: RaisedButton(
                            color: Colors.grey[200],
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                side: BorderSide(
                                  color: Colors.grey[200],
                                )),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                    curve: Curves.fastOutSlowIn,
                                    type: PageTransitionType.rightToLeft,
                                    duration: Duration(milliseconds: 1000),
                                    alignment: Alignment.topCenter,
                                    child: legal(),
                                  ));
                            },
                            child: new Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              // mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                new Icon(Icons.person_pin,color: basicColor,size: 20,),
                                SizedBox(width: 20,),
                                new Text(
                                  "Legal",
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      color: Colors.grey[600]
                                  ),
                                  textAlign: TextAlign.start,
                                ),

                              ],
                            ),
                          ),
                        ),



                        SizedBox(height: 15,),

                        //contact us
                        Container(
                          width: MediaQuery.of(context).size.width/1.2,
                          height: MediaQuery.of(context).size.height/18,
                          child: RaisedButton(
                            color: Colors.grey[200],
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                side: BorderSide(
                                  color: Colors.grey[200],
                                )),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                    curve: Curves.fastOutSlowIn,
                                    type: PageTransitionType.rightToLeft,
                                    duration: Duration(milliseconds: 1000),
                                    alignment: Alignment.topCenter,
                                    child: contactUs(),
                                  ));
                            },
                            child: new Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              // mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                new Icon(Icons.phone,color: basicColor,size: 20,),
                                SizedBox(width: 20,),
                                new Text(
                                  "Contact Us",
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      color: Colors.grey[600]
                                  ),
                                  textAlign: TextAlign.start,
                                ),

                              ],
                            ),
                          ),
                        ),


                        SizedBox(height: 15,),

                        //share
                        Container(
                          width: MediaQuery.of(context).size.width/1.2,
                          height: MediaQuery.of(context).size.height/18,
                          child: RaisedButton(
                            color: Colors.grey[200],
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                side: BorderSide(
                                  color: Colors.grey[200],
                                )),
                            onPressed: () {},
                            child: new Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              // mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                new Icon(Icons.share,color: basicColor,size: 20,),
                                SizedBox(width: 20,),
                                new Text(
                                  "Share",
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      color: Colors.grey[600]
                                  ),
                                  textAlign: TextAlign.start,
                                ),

                              ],
                            ),
                          ),
                        ),

                        SizedBox(height:15,),

                        //privacy policy
                        Container(
                          width: MediaQuery.of(context).size.width/1.2,
                          height: MediaQuery.of(context).size.height/18,
                          child: RaisedButton(
                            color: Colors.grey[200],
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                side: BorderSide(
                                  color: Colors.grey[200],
                                )),
                            onPressed: () {

                              Navigator.push(
                                  context,
                                  PageTransition(
                                    curve: Curves.fastOutSlowIn,
                                    type: PageTransitionType.rightToLeft,
                                    duration: Duration(milliseconds: 1000),
                                    alignment: Alignment.topCenter,
                                    child: privacyPolicy(),
                                  ));

                            },
                            child: new Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              // mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                new Icon(Icons.library_books,color: basicColor,size: 20,),
                                SizedBox(width: 20,),
                                new Text(
                                  "Privacy Policy",
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      color: Colors.grey[600]
                                  ),
                                  textAlign: TextAlign.start,
                                ),

                              ],
                            ),
                          ),
                        ),


                        SizedBox(height: 15,),

                        //logout
                        Container(
                          width: MediaQuery.of(context).size.width/1.2,
                          height: MediaQuery.of(context).size.height/18,
                          child: RaisedButton(
                            color: Colors.grey[200],
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                side: BorderSide(
                                  color: Colors.grey[200],
                                )),
                            onPressed: () {
                              exit(0);
                            },
                            child: new Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              // mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                new Icon(Icons.exit_to_app,color: basicColor,size: 20,),
                                SizedBox(width: 20,),
                                new Text(
                                  "Logout",
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      color: Colors.grey[600]
                                  ),
                                  textAlign: TextAlign.start,
                                ),

                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                ),


                Expanded(
                  flex: 1,
                  child: Container(
                    color: basicColor,
                    child:  Center(
                      child: Container(
                        // width: MediaQuery.of(context).size.width/4,
                        height: MediaQuery.of(context).size.height/14,
                        child: RaisedButton(
                          hoverElevation: 2,
                            elevation: 2,
                            shape: CircleBorder(

                                side: BorderSide(
                                  color: Colors.blueGrey,
                                )),
                            color: basicColor,
                            textColor: Colors.white,
                            padding: EdgeInsets.all(8.0),
                            onPressed: () {

                              Navigator.pushReplacement(
                                  context,
                                  PageTransition(
                                    curve: Curves.fastOutSlowIn,
                                    type: PageTransitionType.bottomToTop,
                                    duration: Duration(milliseconds: 1000),
                                    alignment: Alignment.topCenter,
                                    child: homePage(),
                                  ));
                            },
                            child: Column(
                              children: [
                                Icon(Icons.home, color: Colors.white,size: 18,),
                                Text("Home",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12
                                ),)
                              ],
                            )
                        ),
                      ),
                    ),
                  ),
                )

              ],
            ),
          ],
        ),
      ),
    );
  }



}


