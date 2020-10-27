import 'package:flutter/material.dart';
import 'package:flutter_country_picker/flutter_country_picker.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:planet_hello/widgets/styles.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sms_otp_auto_verify/sms_otp_auto_verify.dart';
import 'profileInfo.dart';

class verifyOTP extends StatefulWidget {
  @override
  _verifyOTPState createState() => new _verifyOTPState();
}

class _verifyOTPState extends State<verifyOTP> {




  @override
  Widget build(BuildContext context) {


    var Width = MediaQuery.of(context).size.width;
    var Height = MediaQuery.of(context).size.height;


    BoxDecoration _pinPutDecoration = BoxDecoration(
      // color: AppTheme.primaryColor,
      border: Border.all(
        // color: AppTheme.primaryColor
      ),
      borderRadius: BorderRadius.circular(5.0),
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 2,
          blurRadius: 5,
          offset: Offset(0, 7), // changes position of shadow
        ),
      ],
    );


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


                        Text("Enter 4 digits Code sent to your mobile",style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                          textAlign: TextAlign.start,),


                        Container(
                          // color: Colors.red,

                          margin: EdgeInsets.fromLTRB(Width * .1,
                              Width * .05, Width * .1, Width * .05),
                          child: PinCodeTextField(
                            textStyle: TextStyle(
                                color: basicColor
                            ),

                            appContext: context,
                            length: 4,
                            obscureText: false,
                            animationType: AnimationType.fade,
                            pinTheme: PinTheme(
                              shape: PinCodeFieldShape.box,
                              activeColor: Colors.grey,
                              inactiveFillColor: Colors.white,
                              selectedFillColor: Colors.white,
                              inactiveColor: Colors.grey,
                              selectedColor: Colors.grey,
                              borderRadius: BorderRadius.circular(5),


                              fieldHeight: 42,
                              fieldWidth: 40,
                              activeFillColor: Colors.white,
                            ),
                            animationDuration: Duration(milliseconds: 300),

                            // backgroundColor: Colors.blue.shade50,
                            enableActiveFill: true,
                            // errorAnimationController: errorController,
                            // controller: textEditingController,
                            // pastedTextStyle: TextStyle(
                            //   color: Colors.green.shade600,
                            //   fontWeight: FontWeight.bold,
                            // ),

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

                            Navigator.pushReplacement(
                                context,
                                PageTransition(
                                  curve: Curves.bounceOut,
                                  type: PageTransitionType.rightToLeftWithFade,
                                  duration: Duration(milliseconds: 1000),
                                  alignment: Alignment.topCenter,
                                  child: profileInfo(),
                                ));

                          },
                          child: Text(
                            "Verify Code",
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

