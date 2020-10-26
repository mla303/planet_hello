import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_country_picker/flutter_country_picker.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:planet_hello/widgets/drawer.dart';
import 'package:planet_hello/widgets/styles.dart';

class categoryPage extends StatefulWidget {
  @override
  _categoryPageState createState() => new _categoryPageState();
}

class _categoryPageState extends State<categoryPage> {

  final GlobalKey<ScaffoldState> _scaffolde = new GlobalKey<ScaffoldState>();

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
                      "Category",
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

