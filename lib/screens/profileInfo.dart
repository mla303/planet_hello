import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:planet_hello/presentation/homePage.dart';
import 'package:planet_hello/widgets/styles.dart';
import 'package:page_transition/page_transition.dart';
import '';
class profileInfo extends StatefulWidget {
  @override
  _profileInfoState createState() => new _profileInfoState();
}

class _profileInfoState extends State<profileInfo> {


  DateTime selectedDate = DateTime.now();
  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1990, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }



  var gendertype = "1";
  DropdownButton gender() => DropdownButton<String>(
    // icon: Icon(Icons.arrow_drop_down_circle,size: 18,),
    items: [
      DropdownMenuItem<String>(
        value: "1",
        child: Text(
          "Male",
        ),
      ),
      DropdownMenuItem<String>(
        value: "2",
        child: Text(
          "Female",
        ),
      ),
      DropdownMenuItem<String>(
        value: "3",
        child: Text(
          "Other",
        ),
      ),
    ],
    onChanged: (value) {
      setState(() {
        gendertype = value;
        print(gendertype);



      });
    },
    value: gendertype,
  );


  @override
  Widget build(BuildContext context) {


    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;


    var options = ['Urdu', 'English', 'Arabic','Turkish',];
    var _Selectedoptions = 'English';


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
                    flex: 3,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            child: Image(
                              image: AssetImage("assets/splashLogo.png"),
                              height: height/5,
                              // width: width/20,
                            ),),
                          Text("Complete Your profile",style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                            textAlign: TextAlign.start,),
                        ],
                      ),
                    )),


                Expanded(
                  flex: 5,
                  child: SingleChildScrollView(
                    child: Container(
                      width: MediaQuery.of(context).size.width/1.2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[


//gender
                          Text(
                            "Gender",
                            style: TextStyle(color: Colors.grey, fontSize: 16.0),
                          ),
                          Container(
                            width: width/1.14,

                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: Colors.white.withOpacity(0.5),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(20.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 5,
                                  offset: Offset(0, 7), // changes position of shadow
                                ),
                              ],


                            ),



//                        color: Colors.yellow,
                            child: DropdownButtonHideUnderline(
                              child: Padding(
                                padding: const EdgeInsets.only(left:20.0,right: 18),
                                child: gender(),
                              ),
                            ),
                          ),


                          SizedBox(height: height/60,),


                          //Date of birth
                          Text(
                            "Date of Birth",
                            style: TextStyle(color: Colors.grey, fontSize: 16.0),
                          ),
                          Container(
                            width: width/1.2,
                            height: height/15,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: Colors.white.withOpacity(0.5),
                                width: 1.0,
                              ),

                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 5,
                                  offset: Offset(0, 7), // changes position of shadow
                                ),
                              ],

                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 15),
                              child: Row(
                                children: [
                                  Icon(Icons.date_range,size: 18,color: basicColor,),
                                  SizedBox(width: 5,),
                                  GestureDetector(
                                    onTap: (){
                                      _selectDate(context);
                                    },
                                    child: Text(
                                        "${selectedDate.toLocal()}".split(' ')[0]
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),


                          SizedBox(height: height/60,),



                          //language
                          Text("Language",style: TextStyle(color: Colors.grey,fontSize: 16),),

                          Container(
                            width: MediaQuery.of(context).size.width/1.2,
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
                                            Text(dropDownStringItem,style: TextStyle(color: Colors.black, letterSpacing: 1),),
                                          ],
                                        ),
                                      );
                                    }).toList(),
                                    onChanged: (String newValueSelected) {
                                      // Your code to execute, when a menu item is selected from drop down
                                      setState(() {
                                        _Selectedoptions = newValueSelected;
                                      });
                                      // Navigator.pushReplacement(
                                      //     context,
                                      //     PageTransition(
                                      //       curve: Curves.bounceOut,
                                      //       type: PageTransitionType.rotate,
                                      //       alignment: Alignment.topCenter,
                                      //       child: WelcomeScreen(),
                                      //     ));
                                    },
                                    value: _Selectedoptions,
                                  ),
                                ),
                              ),
                            ),
                          ),

                          SizedBox(height: height/60,),

                          //Postal code
                          Text(
                            "Postal Code",
                            style: TextStyle(color: Colors.grey, fontSize: 16.0),
                          ),
                          Container(
                            width: width / 1.2,
                            height: height/15,
                            decoration: BoxDecoration(

                              borderRadius: BorderRadius.circular(20.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 5,
                                  offset: Offset(0, 7), // changes position of shadow
                                ),
                              ],
                            ),
                            child: TextFormField(
                              textInputAction: TextInputAction.next,
                              textAlign: TextAlign.start,
                              // style: TextStyle(
                              //   color: Color(0xff00C4B1),
                              // ),
                              cursorColor: Color(0xff000000),
                              keyboardType: TextInputType.number,

                              decoration: new InputDecoration(
                                prefixIcon: Icon(Icons.perm_phone_msg,size: 18,color: basicColor,),

                                filled: true,
                                fillColor: Colors.white,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.white,),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                  BorderSide(color: Colors.white, width: 0.0),
                                ),
                                hintText: "Postal Code",
                                hintStyle: TextStyle(fontSize: width * .03),

                              ),

                              // The validator receives the text that the user has entered.
                              // validator: (value) {
                              //   if (value.isEmpty) {
                              //     return 'Please enter some text';
                              //   }
                              //   return null;
                              // },
                            ),
                          ),




                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[

                        Container(
                          width: MediaQuery.of(context).size.width/1.2,
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
                                    child: homePage(),
                                  ));


                            },
                            child: Text(
                              "Submit",
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

                        Text("Planet Hello terms & conditions and \n Privacy Policy. ",style: TextStyle(
                            color: basicColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                          textAlign: TextAlign.center,),

                      ],
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

