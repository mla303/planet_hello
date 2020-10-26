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
      border: Border.all(color: Colors.grey)
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
                child: Icon(Icons.stop_rounded,color: basicColor,size: 16,),
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
                child: Icon(Icons.stop_rounded,color: basicColor,size: 16,),
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
                child: Icon(Icons.stop_rounded,color: basicColor,size: 16,),
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
                child: Icon(Icons.stop_rounded,color: basicColor,size: 16,),
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
                child: Icon(Icons.stop_rounded,color: basicColor,size: 16,),
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
      border: Border.all(color: Colors.grey)
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
      border: Border.all(color: Colors.grey)
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
                  onPressed: () {

                    // Accepet,
                  },
                  child: Icon(Icons.call_end_outlined, color: Colors.white,size: 32,)
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