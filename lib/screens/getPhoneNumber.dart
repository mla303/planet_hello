import 'package:flutter/material.dart';
import 'package:flutter_country_picker/flutter_country_picker.dart';
import 'package:planet_hello/widgets/styles.dart';
import 'package:page_transition/page_transition.dart';
import 'verifyOTP.dart';


class getPhoneNumber extends StatefulWidget {
  @override
  _getPhoneNumberState createState() => new _getPhoneNumberState();
}

class _getPhoneNumberState extends State<getPhoneNumber> {


  Country _selected;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    child: Container(
                      child: Image(
                  image: AssetImage("assets/splashLogo.png"),
                ),)),


                Expanded(
                  flex: 3,
                  child: Container(
                    width: MediaQuery.of(context).size.width/1.2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[


                        Text("Enter your mobile number",style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                          textAlign: TextAlign.start,),


                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.grey.withOpacity(0.5),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          margin:
                          const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                          child: Row(
                            children: <Widget>[
                              new Padding(
                                  padding:
                                  EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                                  child: CountryPicker(
                                    showDialingCode: false,
                                    dense: true,
                                    onChanged: (Country country)
                                    {
                                      _selected = country;
                                    },
                                    selectedCountry: _selected,
                                  )

                              ),
                              Container(
                                height: 30.0,
                                width: 1.0,
                                color: Colors.grey.withOpacity(0.5),
                                margin: const EdgeInsets.only(left: 00.0, right: 10.0),
                              ),
                              new Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: '3235077538',
                                    hintStyle: TextStyle(color: Colors.grey),
                                  ),
                                  keyboardType: TextInputType.phone,
                                ),
                              )
                            ],
                          ),
                        ),


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
                                  child: verifyOTP(),
                                ));

                          },
                          child: Text(
                            "Request Code",
                            style: TextStyle(
                              fontSize: 14.0,
                            ),
                          ),
                        ),
                      ),



                    ],
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

