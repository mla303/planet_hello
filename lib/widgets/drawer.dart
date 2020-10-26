import 'dart:io';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'styles.dart';

class myDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    var pageWidth = MediaQuery.of(context).size.width;
    var pageHeight = MediaQuery.of(context).size.height;


    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.70,//20.0,
      height: MediaQuery.of(context).size.height * 0.84,//20.0,
      child: Drawer(
    child: Container(
    height: pageHeight * .7,
      color: Colors.grey,
      child: ListView(
        children: [
          ListTile(
            title: Text(
              "DASHBOARD",
              style: TextStyle(
                  color: basicColor,
                  fontSize: pageWidth * .05,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Divider(),
          ListTile(
            onTap: ()
            {
              // Navigator.pushReplacement(
              //     context,
              //     PageTransition(
              //       curve: Curves.fastOutSlowIn,
              //       type: PageTransitionType.rightToLeftWithFade,
              //       duration: Duration(milliseconds: 800),
              //       alignment: Alignment.topCenter,
              //       child: sme_home(),
              //     ));
            },
            title:Text(
              "Switch to SME (Create Job)",
              maxLines: 1,
              style: TextStyle(
                  color: basicColor,
                  fontSize: pageWidth * .04,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Divider(),
          ListTile(
            title:Text(
              "Recharge Wallet",
              maxLines: 1,
              style: TextStyle(
                  color: basicColor,
                  fontSize: pageWidth * .04,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Divider(),
          ListTile(
            onTap: () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => my_jobs()));
            },
            title: Text(
              "My Jobs",
              maxLines: 1,
              style: TextStyle(
                  color: basicColor,
                  fontSize: pageWidth * .04,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Divider(),
          ListTile(
            title: Text(
              "My Profile(Edit/View)",
              maxLines: 1,
              style: TextStyle(
                  color: basicColor,
                  fontSize: pageWidth * .04,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Divider(),
          ListTile(
            title: Text(
              "How it works",
              maxLines: 1,
              style: TextStyle(
                  color: basicColor,
                  fontSize: pageWidth * .04,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Divider(),
          ListTile(
            title: Text(
              "Contact Us",
              maxLines: 1,
              style: TextStyle(
                  color: basicColor,
                  fontSize: pageWidth * .04,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Divider(),
          ListTile(
            title:Text(
              "Logout",
              maxLines: 1,
              style: TextStyle(
                  color: basicColor,
                  fontSize: pageWidth * .04,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Divider(),
        ],
      ),
    ),
    ),
    );
  }
}


