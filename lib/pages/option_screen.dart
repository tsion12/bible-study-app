import 'package:allover/pages/gc_page.dart';
import 'package:allover/pages/mainpage.dart';
import 'package:allover/pages/year_option.dart';
import 'package:flutter/material.dart';

import 'package:allover/pages/rounded_option.dart';
import 'package:allover/pages/reg_g.dart';
import 'package:allover/pages/reg_o.dart';

class OptionScreen extends StatefulWidget {
  @override
  _OptionScreenState createState() => new _OptionScreenState();
}

class _OptionScreenState extends State<OptionScreen> {
  @override
  DecorationImage _buildBackgroundImage() {
    return DecorationImage(
        fit: BoxFit.cover,
        colorFilter: ColorFilter.mode(
            Colors.black38.withOpacity(0.8), BlendMode.dstATop),
        image: AssetImage('assets/regback.jpg'));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(image: _buildBackgroundImage()),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: MediaQuery.of(context).size.width * .6,
              child: RoundedOption(
                text: "Undergraduate",
                fontSize: 25,
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return YearOption();
                      },
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .6,
              child: RoundedOption(
                text: "Graduate",
                fontSize: 25,
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return GCPage();
                      },
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .6,
              child: RoundedOption(
                text: "Others",
                fontSize: 25,
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return RegistrationScreenO();
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
