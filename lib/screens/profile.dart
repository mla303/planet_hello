import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_country_picker/flutter_country_picker.dart';
import 'package:page_transition/page_transition.dart';
import 'package:planet_hello/widgets/drawer.dart';
import 'package:planet_hello/widgets/styles.dart';

import '../presentation/homePage.dart';
import 'editProfile.dart';




class profile extends StatefulWidget {
  @override
  _profileState createState() => new _profileState();
}

class _profileState extends State<profile> {

  @override
  Widget build(BuildContext context) {

    String text1 = "Personal Info";






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
            "Contact Us",
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Text(
                          text1,
                          // textAlign: TextAlign.start,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              height: 1.3,
                              color: Colors.grey,
                              fontSize: 14
                          ),

                          // overflow: TextOverflow.ellipsis,
                          // maxLines: 5,

                        ),
                        SizedBox(height: 15,),


                        Row(
                          children: [
                            Icon(Icons.person, color: Colors.grey,),
                            SizedBox(width: 12,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Gender",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      height: 1.3,
                                      fontSize: 12
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 5,

                                ),
                                SizedBox(height: 1,),
                                Text(
                                  "Male",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      height: 1.3,
                                      fontSize: 12
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 5,

                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Divider(),
                        Row(
                          children: [
                            Icon(Icons.phone, color: Colors.grey,),
                            SizedBox(width: 12,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Phone No.",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      height: 1.3,
                                      fontSize: 12
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 5,

                                ),
                                SizedBox(height: 1,),
                                Text(
                                  "+92 323 5077538",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      height: 1.3,
                                      fontSize: 12
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 5,

                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Divider(),
                        Row(
                          children: [
                            Icon(Icons.date_range, color: Colors.grey,),
                            SizedBox(width: 12,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "DOB No.",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      height: 1.3,
                                      fontSize: 12
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 5,

                                ),
                                SizedBox(height: 1,),
                                Text(
                                  "18 March 1997",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      height: 1.3,
                                      fontSize: 12
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 5,

                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Divider(),
                        SizedBox(height: 15,),
                        Center(
                          child: Container(
                            width: MediaQuery.of(context).size.width/2,
                            height: MediaQuery.of(context).size.height/18,
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  side: BorderSide(
                                    color: basicColor,
                                  )),
                              color: basicColor,
                              textColor: Colors.white,
                              padding: EdgeInsets.all(8.0),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    PageTransition(
                                      curve: Curves.bounceOut,
                                      type: PageTransitionType.rightToLeftWithFade,
                                      duration: Duration(milliseconds: 1000),
                                      alignment: Alignment.topCenter,
                                      child: editProfile(),
                                    ));


                              },
                              child: Text(
                                "Edit Profile",
                                style: TextStyle(
                                  fontSize: 14.0,
                                ),
                              ),
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


