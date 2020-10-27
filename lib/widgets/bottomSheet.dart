import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:planet_hello/widgets/styles.dart';

class BottomSheetWidget extends StatelessWidget {



  final String title;
  final String point1;
  final String point2;
  final String point3;
  final String point4;
  final String point5;
  final VoidCallback accept;
  final VoidCallback reject;


  const BottomSheetWidget({
    @required this.title,
    @required this.point1,
    @required this.point2,
    @required this.point3,
    @required this.point4,
    @required this.point5,
    @required this.accept,
    @required this.reject,
    Key key,
  }) : super(key: key);




  @override
  Widget build(BuildContext context) => Container(




    height: MediaQuery.of(context).size.height/3,
    decoration: BoxDecoration(

        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 7,
            offset: Offset(0, -7), // changes position of shadow
          ),
        ],

      color: Colors.white,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(50),
            topLeft: Radius.circular(50)),
      border: Border.all(color: Colors.white)
    ),
    padding: EdgeInsets.all(16),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            color: basicColor
          ),
        ),
        const SizedBox(height: 20),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: RichText(text: TextSpan(
            children: [
              WidgetSpan(
                child: Icon(Icons.stop,color: basicColor,size: 16,),
              ),
              TextSpan(text: point1,style: TextStyle(fontSize: 16,color: Colors.grey)),
            ]
          )),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: RichText(text: TextSpan(
            children: [
              WidgetSpan(
                child: Icon(Icons.stop,color: basicColor,size: 16,),
              ),
              TextSpan(text: point2,style: TextStyle(fontSize: 16,color: Colors.grey)),
            ]
          )),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: RichText(text: TextSpan(
            children: [
              WidgetSpan(
                child: Icon(Icons.stop,color: basicColor,size: 16,),
              ),
              TextSpan(text: point3,style: TextStyle(fontSize: 16,color: Colors.grey)),
            ]
          )),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: RichText(text: TextSpan(
            children: [
              WidgetSpan(
                child: Icon(Icons.stop,color: basicColor,size: 16,),
              ),
              TextSpan(text: point4,style: TextStyle(fontSize: 16,color: Colors.grey)),
            ]
          )),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: RichText(text: TextSpan(
            children: [
              WidgetSpan(
                child: Icon(Icons.stop,color: basicColor,size: 16,),
              ),
              TextSpan(text: point5,style: TextStyle(fontSize: 16,color: Colors.grey)),
            ]
          )),
        ),


        const SizedBox(height: 25),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width/3,
              height: MediaQuery.of(context).size.height/18,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(
                      color: Colors.redAccent,
                    )),
                color: Colors.redAccent,
                textColor: Colors.white,
                padding: EdgeInsets.all(8.0),
                onPressed: () {

                  // Accepet,
                },
                child: Text(
                  "Decline",
                  style: TextStyle(
                    fontSize: 14.0,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 32),
            Container(
              width: MediaQuery.of(context).size.width/3,
              height: MediaQuery.of(context).size.height/18,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(
                      color: Colors.green,
                    )),
                color: Colors.green,
                textColor: Colors.white,
                padding: EdgeInsets.all(8.0),
                onPressed: accept,

                child: Text(
                  "Accept",
                  style: TextStyle(
                    fontSize: 14.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}



class SearchingBottomSheet extends StatelessWidget {



  final String title;
  final VoidCallback searching;


  const SearchingBottomSheet({
    @required this.title,
    @required this.searching,
    Key key,
  }) : super(key: key);




  @override
  Widget build(BuildContext context) => Container(




    height: MediaQuery.of(context).size.height/5,
    decoration: BoxDecoration(

        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 7,
            offset: Offset(0, -7), // changes position of shadow
          ),
        ],

      color: Colors.white,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(50),
            topLeft: Radius.circular(50)),
      border: Border.all(color: Colors.white)
    ),
    padding: EdgeInsets.all(16),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[


        Container(
          width: 60,
          height: 40,
          child: WavyAnimatedTextKit(
            textStyle: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: basicColor
            ),
              text: [
                title
              ],
          isRepeatingAnimation: true,
          ),
        ),
        const SizedBox(height: 20),

        Container(
          // width: MediaQuery.of(context).size.width/4,
          height: MediaQuery.of(context).size.height/16,
          child: RaisedButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                side: BorderSide(
                  color: Colors.redAccent,
                )),
            color: Colors.redAccent,
            textColor: Colors.white,
            padding: EdgeInsets.all(8.0),
            onPressed: () {

              // Accepet,
            },
            child: Icon(Icons.call_end, color: Colors.white,size: 32,)
          ),
        ),
      ],
    ),
  );
}


class callConnectBottomSheet extends StatelessWidget {



  final String title;
  final String time;
  final VoidCallback mic;
  final VoidCallback endCall;
  final VoidCallback speaker;


  const callConnectBottomSheet({
    @required this.title,
    @required this.time,
    @required this.mic,
    @required this.endCall,
    @required this.speaker,
    Key key,
  }) : super(key: key);




  @override
  Widget build(BuildContext context) => Container(




    height: MediaQuery.of(context).size.height/4,
    decoration: BoxDecoration(

        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 7,
            offset: Offset(0, -7), // changes position of shadow
          ),
        ],

      color: Colors.white,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(50),
            topLeft: Radius.circular(50)),
      border: Border.all(color: Colors.white)
    ),
    padding: EdgeInsets.all(16),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[


        Text(

          title,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: basicColor
          ),
        ),
        const SizedBox(height: 2),

       Text(

         time,
         textAlign: TextAlign.center,
         style: TextStyle(
             fontSize: 18,
             fontWeight: FontWeight.w400,
             color: Colors.grey
         ),
       ),

        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              // width: MediaQuery.of(context).size.width/4,
              height: MediaQuery.of(context).size.height/16,
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

                    // Accepet,
                  },
                  child: Icon(Icons.mic, color: Colors.white,size: 32,)
              ),
            ),
            Container(
              // width: MediaQuery.of(context).size.width/4,
              height: MediaQuery.of(context).size.height/16,
              child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(
                        color: Colors.redAccent,
                      )),
                  color: Colors.redAccent,
                  textColor: Colors.white,
                  padding: EdgeInsets.all(8.0),
                  onPressed: endCall,

                  child: Icon(Icons.call_end, color: Colors.white,size: 32,)
              ),
            ),
            Container(
              // width: MediaQuery.of(context).size.width/4,
              height: MediaQuery.of(context).size.height/16,
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

                  // Accepet,
                },
                child: Icon(Icons.volume_down, color: Colors.white,size: 32,)
              ),
            ),
          ],
        ),
      ],
    ),
  );
}


class reviewBottomSheet extends StatelessWidget {



  final String name;
  final String title;
  final VoidCallback thumup;
  final VoidCallback thumddown;
  final VoidCallback report;
  final VoidCallback submit;


  const reviewBottomSheet({
    @required this.title,
    @required this.name,
    @required this.thumup,
    @required this.thumddown,
    @required this.report,
    @required this.submit,
    Key key,
  }) : super(key: key);




  @override
  Widget build(BuildContext context) => Container(




    height: MediaQuery.of(context).size.height/3,
    decoration: BoxDecoration(

        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 7,
            offset: Offset(0, -7), // changes position of shadow
          ),
        ],

      color: Colors.white,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(50),
            topLeft: Radius.circular(50)),
      border: Border.all(color: Colors.white)
    ),
    padding: EdgeInsets.all(16),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[


        Text(
          name,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.grey
          ),
        ),
        const SizedBox(height: 2),

       Text(

         title,
         textAlign: TextAlign.center,
         style: TextStyle(
             fontSize: 22,
             fontWeight: FontWeight.w400,
             color: basicColor
         ),
       ),

        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            

            Container(
              // width: MediaQuery.of(context).size.width/4,
              height: MediaQuery.of(context).size.height/14,
              child: RaisedButton(
                  shape: CircleBorder(

                      side: BorderSide(
                        color: basicColor,
                      )),
                  color: basicColor,
                  textColor: Colors.white,
                  padding: EdgeInsets.all(8.0),
                  onPressed: () {

                    // Accepet,
                  },
                  child: Icon(Icons.thumb_up, color: Colors.white,size: 22,)
              ),
            ),
            Container(
              // width: MediaQuery.of(context).size.width/4,
              height: MediaQuery.of(context).size.height/14,
              child: RaisedButton(
                  shape: CircleBorder(

                      side: BorderSide(
                        color: Colors.blueGrey,
                      )),
                  color: Colors.blueGrey,
                  textColor: Colors.white,
                  padding: EdgeInsets.all(8.0),
                  onPressed: () {

                    // Accepet,
                  },
                  child: Icon(Icons.thumb_down, color: Colors.white,size: 22,)
              ),
            ),
            Container(
              // width: MediaQuery.of(context).size.width/4,
              height: MediaQuery.of(context).size.height/14,
              child: RaisedButton(
                shape: CircleBorder(
                    side: BorderSide(
                      color: Colors.redAccent,
                    )),
                color: Colors.redAccent,
                textColor: Colors.white,
                padding: EdgeInsets.all(8.0),
                onPressed: report,
                child: Icon(Icons.report, color: Colors.white,size: 22,)
              ),
            ),
          ],
        ),
        const SizedBox(height: 30),

        Container(
          width: MediaQuery.of(context).size.width/5,
          height: MediaQuery.of(context).size.height/14,
          child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(
                    color: basicColor,
                  )),
              color: basicColor,
              textColor: Colors.white,
              padding: EdgeInsets.all(8.0),
              onPressed: submit,
              child: Text(
                "Submit",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w400
                ),
              ),
          ),
        ),

      ],
    ),
  );
}


class reportBottomSheet extends StatelessWidget {



  final String name;
  final String title;
  final VoidCallback thumup;
  final VoidCallback thumddown;
  final VoidCallback report;
  final VoidCallback submit;


  const reportBottomSheet({
    @required this.title,
    @required this.name,
    @required this.thumup,
    @required this.thumddown,
    @required this.report,
    @required this.submit,
    Key key,
  }) : super(key: key);




  @override
  Widget build(BuildContext context) => Container(

    height: MediaQuery.of(context).size.height/2,
    decoration: BoxDecoration(

        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 7,
            offset: Offset(0, -7), // changes position of shadow
          ),
        ],

      color: Colors.white,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(50),
            topLeft: Radius.circular(50)),
      border: Border.all(color: Colors.white)
    ),
    padding: EdgeInsets.all(16),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[


        Text(
          name,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.grey
          ),
        ),
        const SizedBox(height: 2),

       Text(

         title,
         textAlign: TextAlign.center,
         style: TextStyle(
             fontSize: 22,
             fontWeight: FontWeight.w400,
             color: basicColor
         ),
       ),

        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [


            Container(
              // width: MediaQuery.of(context).size.width/4,
              height: MediaQuery.of(context).size.height/14,
              child: RaisedButton(
                  shape: CircleBorder(

                      side: BorderSide(
                        color: basicColor,
                      )),
                  color: basicColor,
                  textColor: Colors.white,
                  padding: EdgeInsets.all(8.0),
                  onPressed: () {

                    // Accepet,
                  },
                  child: Icon(Icons.thumb_up, color: Colors.white,size: 22,)
              ),
            ),
            Container(
              // width: MediaQuery.of(context).size.width/4,
              height: MediaQuery.of(context).size.height/14,
              child: RaisedButton(
                  shape: CircleBorder(

                      side: BorderSide(
                        color: Colors.blueGrey,
                      )),
                  color: Colors.blueGrey,
                  textColor: Colors.white,
                  padding: EdgeInsets.all(8.0),
                  onPressed: () {

                    // Accepet,
                  },
                  child: Icon(Icons.thumb_down, color: Colors.white,size: 22,)
              ),
            ),
            Container(
              // width: MediaQuery.of(context).size.width/4,
              height: MediaQuery.of(context).size.height/14,
              child: RaisedButton(
                  shape: CircleBorder(

                      side: BorderSide(
                        color: Colors.redAccent,
                      )),
                  color: Colors.redAccent,
                  textColor: Colors.white,
                  padding: EdgeInsets.all(8.0),
                  onPressed: () {

                    // Accepet,
                  },
                  child: Icon(Icons.report, color: Colors.white,size: 22,)
              ),
            ),

          ],
        ),
        const SizedBox(height: 30),

        TextFormField(
          textInputAction: TextInputAction.next,
          textAlign: TextAlign.start,
          // style: TextStyle(
          //   color: Color(0xff00C4B1),
          // ),
          cursorColor: Color(0xff000000),
          keyboardType: TextInputType.number,

          decoration: new InputDecoration(

            filled: true,
            fillColor: Colors.white,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey,),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide:
              BorderSide(color: Colors.white, width: 0.0),
            ),
            hintText: "Postal Code",
            hintStyle: TextStyle(fontSize: 18),

          ),

          // The validator receives the text that the user has entered.
          // validator: (value) {
          //   if (value.isEmpty) {
          //     return 'Please enter some text';
          //   }
          //   return null;
          // },
        ),
        const SizedBox(height: 30),
        Container(
          width: MediaQuery.of(context).size.width/5,
          height: MediaQuery.of(context).size.height/14,
          child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(
                    color: basicColor,
                  )),
              color: basicColor,
              textColor: Colors.white,
              padding: EdgeInsets.all(8.0),
              onPressed: submit,
              child: Text(
                "Submit",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w400
                ),
              ),
          ),
        ),

      ],
    ),
  );
}