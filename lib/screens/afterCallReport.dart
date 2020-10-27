import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:page_transition/page_transition.dart';
import 'package:planet_hello/presentation/alertPage.dart';
import 'package:planet_hello/widgets/bottomSheet.dart';
import 'package:planet_hello/widgets/drawer.dart';
import 'package:planet_hello/widgets/styles.dart';
import 'package:planet_hello/presentation/homePage.dart';
class afterCallReport extends StatefulWidget {
  @override
  _afterCallReportState createState() => new _afterCallReportState();
}

class _afterCallReportState extends State<afterCallReport> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }






  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;




    return Scaffold(
      resizeToAvoidBottomInset: true,
      resizeToAvoidBottomPadding: true,
      // appBar: PreferredSize(
      //   preferredSize: Size.fromHeight(80.0),
      //   child: AppBar(
      //     centerTitle: true,
      //     backgroundColor: basicColor,
      //     title:  Text(
      //       "Planet Hello",
      //       style: TextStyle(color: Colors.white, fontSize: 18.0),
      //     ),
      //     shape: ContinuousRectangleBorder(
      //         borderRadius: BorderRadius.only(
      //             bottomLeft: Radius.circular(50),
      //             bottomRight: Radius.circular(50))),
      //     iconTheme: IconThemeData(color: Colors.white),
      //   ),
      // ),



      bottomSheet: reportBottomSheet(
        name: "John Doe,",
        title: "Were You happy with call?",
        submit: (){
          Navigator.pushReplacement(
              context,
              PageTransition(
                curve: Curves.fastOutSlowIn,
                type: PageTransitionType.rightToLeftWithFade,
                duration: Duration(milliseconds: 1000),
                alignment: Alignment.topCenter,
                child: homePage(),
              ));
        },


      ),
      drawer: myDrawer(),
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Center(
                    child: Text(
                      "Report",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: basicColor
                      ),



                    ),
                  ),
                ),


                Expanded(
                  flex: 5,
                  child: Container(
                    width: MediaQuery.of(context).size.width/1.2,
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage("assets/glob.png"),
                          height: height/3,
                          // width: width/3,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }




}

