import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_country_picker/flutter_country_picker.dart';
import 'package:page_transition/page_transition.dart';
import 'package:planet_hello/widgets/drawer.dart';
import 'package:planet_hello/widgets/styles.dart';

import 'alertPage.dart';
import 'categoryPage.dart';

class homePage extends StatefulWidget {
  @override
  _homePageState createState() => new _homePageState();
}

class _homePageState extends State<homePage> {


  void opensheet() async {
    showModalBottomSheet(
      // isScrollControlled: true,
      backgroundColor: Colors.transparent,
        context: (context),
        enableDrag: true,
        isDismissible: true,
        builder: (context) {
          return Container(
            height: MediaQuery.of(context).size.height/2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                topLeft: Radius.circular(30),
              ),



              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Column(
                children: [

                  Text(
                    "Category",
                    style: TextStyle(
                        color: basicColor,
                        fontSize: 18.0,
                    fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox (height: 10,),
                  Container(
                    width: MediaQuery.of(context).size.width/1.3,
                    height: MediaQuery.of(context).size.height/14,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(
                            color: basicColor,
                          )),
                      color: Colors.white,
                      textColor: basicColor,
                      padding: EdgeInsets.all(8.0),
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            PageTransition(
                              curve: Curves.bounceOut,
                              type: PageTransitionType.rightToLeftWithFade,
                              duration: Duration(milliseconds: 1000),
                              alignment: Alignment.topCenter,
                              child: alertPage(),
                            ));


                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Text(
                            "Category_1",
                            style: TextStyle(
                              fontSize: 14.0,
                            ),
                          ),

                          Icon(Icons.arrow_forward),

                        ],
                      ),

                    ),
                  ),

                  SizedBox (height: 8,),
                  Container(
                    width: MediaQuery.of(context).size.width/1.3,
                    height: MediaQuery.of(context).size.height/14,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(
                            color: basicColor,
                          )),
                      color: Colors.white,
                      textColor: basicColor,
                      padding: EdgeInsets.all(8.0),
                      onPressed: () {
                        // Navigator.push(
                        //     context,
                        //     PageTransition(
                        //       curve: Curves.bounceOut,
                        //       type: PageTransitionType.rightToLeftWithFade,
                        //       duration: Duration(milliseconds: 1000),
                        //       alignment: Alignment.topCenter,
                        //       child: homePage(),
                        //     ));


                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Text(
                            "Category_2",
                            style: TextStyle(
                              fontSize: 14.0,
                            ),
                          ),

                          Icon(Icons.arrow_forward),

                        ],
                      ),

                    ),
                  ),
                  SizedBox (height: 8,),
                  Container(
                    width: MediaQuery.of(context).size.width/1.3,
                    height: MediaQuery.of(context).size.height/14,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(
                            color: basicColor,
                          )),
                      color: Colors.white,
                      textColor: basicColor,
                      padding: EdgeInsets.all(8.0),
                      onPressed: () {
                        // Navigator.push(
                        //     context,
                        //     PageTransition(
                        //       curve: Curves.bounceOut,
                        //       type: PageTransitionType.rightToLeftWithFade,
                        //       duration: Duration(milliseconds: 1000),
                        //       alignment: Alignment.topCenter,
                        //       child: homePage(),
                        //     ));


                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Text(
                            "Category_3",
                            style: TextStyle(
                              fontSize: 14.0,
                            ),
                          ),

                          Icon(Icons.arrow_forward),

                        ],
                      ),

                    ),
                  ),
                  SizedBox (height: 8,),
                  Container(
                    width: MediaQuery.of(context).size.width/1.3,
                    height: MediaQuery.of(context).size.height/14,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(
                            color: basicColor,
                          )),
                      color: Colors.white,
                      textColor: basicColor,
                      padding: EdgeInsets.all(8.0),
                      onPressed: () {
                        // Navigator.push(
                        //     context,
                        //     PageTransition(
                        //       curve: Curves.bounceOut,
                        //       type: PageTransitionType.rightToLeftWithFade,
                        //       duration: Duration(milliseconds: 1000),
                        //       alignment: Alignment.topCenter,
                        //       child: homePage(),
                        //     ));


                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Text(
                            "Category_4",
                            style: TextStyle(
                              fontSize: 14.0,
                            ),
                          ),

                          Icon(Icons.arrow_forward),

                        ],
                      ),

                    ),
                  ),

                ],
              ),
            ),
          );
        });
  }






  @override
  Widget build(BuildContext context) {


    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;



    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: AppBar(
          centerTitle: true,
          backgroundColor: basicColor,
          title:  Text(
            "Planet Hello",
            style: TextStyle(color: Colors.white, fontSize: 18.0),
          ),
          shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50))),
          iconTheme: IconThemeData(color: Colors.white),
        ),
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
                        "Tap the Earth to start Call",
                        style: TextStyle(color: basicColor, fontSize: 22.0),
                      ),
                    ),
                ),


                Expanded(
                  flex: 5,
                  child: Container(
                    width: MediaQuery.of(context).size.width/1.2,
                    child: Column(
                      children: [
                        InkWell(
                          onTap: ()
                          {
                            // Navigator.push(
                            //     context,
                            //     PageTransition(
                            //       curve: Curves.fastOutSlowIn,
                            //       type: PageTransitionType.bottomToTop,
                            //       duration: Duration(milliseconds: 1000),
                            //       alignment: Alignment.topCenter,
                            //       child: categoryPage(),
                            //     ));

                            opensheet();

                          },
                          child: Image(
                            image: AssetImage("assets/glob.png"),
                            height: height/3,
                            // width: width/3,
                          ),
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


