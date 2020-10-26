import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:planet_hello/screens/getPhoneNumber.dart';
import 'package:planet_hello/widgets/styles.dart';


class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => new _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
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
                flex: 3,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Image(
                        image: AssetImage("assets/splashLogo.png"),
                      ),
                      Text("Welcome",style: TextStyle(
                          color: basicColor,
                          fontSize: 24,
                      fontWeight: FontWeight.w500),),

                      SizedBox(height: 12,),
                      Text("We find best people that matches \n your interest.",style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                      fontWeight: FontWeight.w500),
                      textAlign: TextAlign.center,),


                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    Container(
                      width: MediaQuery.of(context).size.width/1.6,
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
                                child: getPhoneNumber(),
                              ));


                        },
                        child: Text(
                          "Countine with phone",
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 22,),
                    Text("If you continue you are accepting",style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                      textAlign: TextAlign.center,),

                    Text("Planet Hello terms & conditions \n and Privacy Policy. ",style: TextStyle(
                        color: basicColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                      textAlign: TextAlign.center,),

                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

