import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:planet_hello/widgets/styles.dart';

import 'welcomeScreen.dart';


class LanguageSelector extends StatefulWidget {
  @override
  _LanguageSelectorState createState() => new _LanguageSelectorState();
}

class _LanguageSelectorState extends State<LanguageSelector> {

  var options = ['Urdu', 'English', 'Arabic','Turkish',];
  var _Selectedoptions = 'English';

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
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text("Language",style: TextStyle(color: Colors.grey,fontSize: 14),),
                    ),
                    SizedBox(height: 12,),
                    Container(
                      width: MediaQuery.of(context).size.width/1.6,
                      decoration: BoxDecoration(

                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 7,
                            offset: Offset(0, 7), // changes position of shadow
                          ),
                        ],

                          // border: Border.all(
                          //   color: basicColor,
                          // ),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.white,
                      ),

                      child: DropdownButtonHideUnderline(
                        child: Padding(
                          padding: const EdgeInsets.only(left:18.0,right: 8),
                          child: ButtonTheme(
                            child: DropdownButton<String>(
                              //hint: Text("Select Airport"),
                              items: options.map((String dropDownStringItem) {
                                return DropdownMenuItem<String>(
                                  value: dropDownStringItem,
                                  child: Row(
                                    children: [
                                      Icon(Icons.language,size: 18,color: basicColor,),
                                      SizedBox(width: 5,),
                                      Text(dropDownStringItem,style: TextStyle(color: basicColor, letterSpacing: 1),),
                                    ],
                                  ),
                                );
                              }).toList(),
                              onChanged: (String newValueSelected) {
                                // Your code to execute, when a menu item is selected from drop down
                                setState(() {
                                  _Selectedoptions = newValueSelected;
                                });
                                Navigator.pushReplacement(
                                    context,
                                    PageTransition(
                                      curve: Curves.bounceOut,
                                      type: PageTransitionType.rotate,
                                      alignment: Alignment.topCenter,
                                      child: WelcomeScreen(),
                                    ));
                              },
                              value: _Selectedoptions,
                            ),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

