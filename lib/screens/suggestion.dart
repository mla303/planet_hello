import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_country_picker/flutter_country_picker.dart';
import 'package:page_transition/page_transition.dart';
import 'package:planet_hello/widgets/drawer.dart';
import 'package:planet_hello/widgets/styles.dart';

import '../presentation/homePage.dart';




class suggestion extends StatefulWidget {
  @override
  _suggestionState createState() => new _suggestionState();
}

class _suggestionState extends State<suggestion> {

  @override
  Widget build(BuildContext context) {

    String text1 = "By using the TheL Hello App web site (“Service”), "
        "or any services of The KEY Bahamas, Inc (“The KEY Bahamas”), you are agreeing to be bound by "
        "the following terms and conditions (“Terms of Service”).";


  String text2 = "IF YOU ARE ENTERING INTO THIS AGREEMENT ON "
      "BEHALF OF A COMPANY OR OTHER LEGAL ENTITY, YOU REPRESENT THAT YOU HAVE THE AUTHORITY TO BIND SUCH ENTITY.";
  String text3= "ACCOUNT TO THESE TERMS AND CONDITIONS, IN WHICH CASE THE TERMS “YOU” OR “YOUR” SHALL REFER TO SUCH ENTITY, ITS AFFILIATES AND USERS ASSOCIATED WITH IT. IF YOU DO NOT HAVE SUCH AUTHORITY, OR.";
  String text4= " IF YOU DO NOT AGREE WITH THESE TERMS AND CONDITIONS.YOU MUST NOT ACCEPT THIS AGREEMENT AND MAY NOT USE THE SERVICE.";



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
            "Suggestion",
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

                        Text(
                          text1,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            height: 1.3,
                            fontSize: 14
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 5,

                        ),
                        SizedBox(height: 2,),
                        Text(
                          text2,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            height: 1.3,
                            fontSize: 12
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 5,

                        ),
                        SizedBox(height: 3,),
                        Text(
                          text3,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            height: 1.3,
                            fontSize: 12
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 5,

                        ),
                        SizedBox(height: 3,),
                        Text(
                          text4,
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


