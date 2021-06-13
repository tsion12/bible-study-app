//import 'dart:html';

import 'package:flutter/material.dart';
import '../utilis/allover.dart';
import '../utilis/mynav.dart';
import '../widgets/walkthrough.dart';

class IntroOne extends StatefulWidget {
  @override
  IntroOneState createState() {
    return IntroOneState();
  }
}

class IntroOneState extends State<IntroOne> {
  final PageController controller = new PageController();
  int currentPage = 0;
  bool lastPage = false;

  void _onPageChanged(int page) {
    setState(() {
      currentPage = page;
      if (currentPage == 3) {
        lastPage = true;
      } else {
        lastPage = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/balck.jpg"),
          fit: BoxFit.fill,
        ),
      ),
      padding: EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(),
          ),
          Expanded(
            flex: 11,
            child: PageView(
              children: <Widget>[
                Walkthrough(
                  image: AssetImage("assets/intro1.jpg"),
                ),
                Walkthrough(
                  image: AssetImage("assets/intro2.jpg"),
                ),
                Walkthrough(
                  image: AssetImage("assets/intro3.jpg"),
                ),
                Walkthrough(
                  image: AssetImage(
                    "assets/intro4.jpg",
                  ),
                ),
              ],
              controller: controller,
              onPageChanged: _onPageChanged,
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                FlatButton(
                  child: Text(lastPage ? "" : Allover.skip,
                      style: TextStyle(
                          color: Colors.blue,
                          fontFamily: 'Linotype Tetria',
                          fontWeight: FontWeight.w300,
                          fontSize: 16.0)),
                  onPressed: () =>
                      lastPage ? null : MyNavigator.goToHome(context),
                ),
                FlatButton(
                  child: Text(lastPage ? Allover.gotIt : Allover.next,
                      style: TextStyle(
                          color: Colors.blue,
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
