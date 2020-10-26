
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:planet_hello/widgets/navi.dart';
import 'package:planet_hello/widgets/styles.dart';
import 'package:planet_hello/widgets/walkthrough.dart';


class IntroScreen extends StatefulWidget {
  @override
  IntroScreenState createState() {
    return IntroScreenState();
  }
}

class IntroScreenState extends State<IntroScreen> {
  final PageController controller = new PageController();
  int currentPage = 0;
  bool lastPage = false;

  void _onPageChanged(int page) {
    setState(() {
      currentPage = page;
      if (currentPage == 2) {
        lastPage = true;
      } else {
        lastPage = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(),
          ),
          Expanded(
            flex: 3,
            child: PageView(
              children: <Widget>[
                myWalkthrough(
                  title: "Around the World",
                  content: "Connect the People around the world \n that matches your interest",
                  image: "assets/walkthrough1.png",
                ),
                myWalkthrough(
                  title: "Live Call",
                  content: "Lest connect with the people of your choice \n and suggested by Planet Hello",
                  image: "assets/walkthrough2.png",
                ),
                myWalkthrough(
                  title: "User Privacy",
                  content: "We care about your privacy so your data \n remain  private on Planet Hello",
                  image: "assets/walkthrough3.png",
                ),
              ],
              controller: controller,
              onPageChanged: _onPageChanged,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: new DotsIndicator(
              position: currentPage.toDouble(),
              dotsCount: 3,
              decorator: DotsDecorator(

                activeColor: basicColor, color: Colors.grey,
                activeSize: Size(14, 14),
                activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
              ),
//                      numberOfDot: pageLength,
//                      position: currentIndexPage,
//                      dotColor: Colors.black87,
//                      dotActiveColor: Colors.amber
//
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[


                FlatButton(
                  child: Text(lastPage ? "" : "SKIP",
                      style: TextStyle(
                          color: basicColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0)),
                  onPressed: () =>
                  lastPage ? null : MyNavigator.goToHome(context),
                ),
                FlatButton(
                  child: Text(lastPage ? "GOT IT" : "NEXT",
                      style: TextStyle(
                          color: basicColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0)),
                  onPressed: () => lastPage
                      ? MyNavigator.goToHome(context)
                      : controller.nextPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeIn),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}