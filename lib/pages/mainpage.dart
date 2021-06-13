import 'package:allover/pages/aboutus.dart';
import 'package:allover/years/first.dart';
import 'package:allover/years/fourth.dart';
import 'package:allover/years/second.dart';
import 'package:allover/years/third.dart';
import 'package:flutter/material.dart';
import './aboutus.dart';
import './socialmedia.dart';

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainPageState();
  }
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              automaticallyImplyLeading: false,
              leading: Icon(Icons.home),
              title: Text('Home'),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('About Us'),
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (BuildContext) => AboutUs()));
              },
            ),
            ListTile(
              leading: Icon(Icons.contacts),
              title: Text('Social Medias'),
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext) => SocialMedia()));
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Evasue"),
        actions: [],
      ),
      body: _buildListView(context),
    );
  }

  ListView _buildListView(BuildContext context) {
    return ListView.builder(
      itemCount: 1,
      itemBuilder: (_, index) {
        return Center(
          child: Column(
            children: [
              ListTile(
                  title: Text(
                    'First year',
                    style: TextStyle(fontSize: 27),
                  ),
                  leading: Icon(Icons.calendar_today),
                  trailing: IconButton(
                    icon: Icon(Icons.arrow_forward),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => FirstPage()));
                    },
                  )),
              ListTile(
                  title: Text(
                    'Second year',
                    style: TextStyle(fontSize: 27),
                  ),
                  leading: Icon(Icons.calendar_today),
                  trailing: IconButton(
                    icon: Icon(Icons.arrow_forward),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SecondPage()));
                    },
                  )),
              ListTile(
                  title: Text(
                    'Third year',
                    style: TextStyle(fontSize: 27),
                  ),
                  leading: Icon(Icons.calendar_today),
                  trailing: IconButton(
                    icon: Icon(Icons.arrow_forward),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ThirdPage()));
                    },
                  )),
              ListTile(
                  title: Text(
                    'Forth year',
                    style: TextStyle(fontSize: 27),
                  ),
                  leading: Icon(Icons.calendar_today),
                  trailing: IconButton(
                    icon: Icon(Icons.arrow_forward),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FourthPage()));
                    },
                  )),
            ],
          ),
        );
      },
    );
  }
}
