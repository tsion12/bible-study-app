import 'package:allover/pages/aboutus.dart';
import 'package:allover/pages/socialmedia.dart';
import 'package:allover/years/first.dart';
import 'package:allover/years/fourth.dart';
import 'package:allover/years/second.dart';
import 'package:allover/years/third.dart';
import 'package:flutter/material.dart';

class FourthPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ForthPageState();
  }
}

class _ForthPageState extends State<FourthPage> {
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
                    'ጥናት_1',
                    style: TextStyle(fontSize: 27),
                  ),
                  leading: Icon(Icons.calendar_today),
                  subtitle: Text('ልብን የሚያይ ጌታ '),
                  trailing: IconButton(
                    icon: Icon(Icons.arrow_forward),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => FirstPage()));
                    },
                  )),
              ListTile(
                  title: Text(
                    'ጥናት_2 ',
                    style: TextStyle(fontSize: 27),
                  ),
                  subtitle: Text('እዉነተኛ ወዳጅነት'),
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
                    'ጥናት_ 3 ',
                    style: TextStyle(fontSize: 27),
                  ),
                  subtitle: Text('እዉነተኛ ወዳጅነት'),
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
                    'ጥናት_4',
                    style: TextStyle(fontSize: 27),
                  ),
                  subtitle: Text('የነቃ ህሊና'),
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
              ListTile(
                  title: Text(
                    'ጥናት_5',
                    style: TextStyle(fontSize: 27),
                  ),
                  subtitle: Text('የጌታ ጥበቃ'),
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
              ListTile(
                  title: Text(
                    'ጥናት_6',
                    style: TextStyle(fontSize: 27),
                  ),
                  subtitle: Text('በጌታ መበርታት '),
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
              ListTile(
                  title: Text(
                    'ጥናት_7',
                    style: TextStyle(fontSize: 27),
                  ),
                  subtitle: Text('የእግዚአብሔር ቁጣና በረከት'),
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
              ListTile(
                  title: Text(
                    'ጥናት_8',
                    style: TextStyle(fontSize: 27),
                  ),
                  subtitle: Text('የእግዚአብሔር ተስፋ ለዳዊት'),
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
              ListTile(
                  title: Text(
                    'ጥናት_9',
                    style: TextStyle(fontSize: 27),
                  ),
                  subtitle: Text('ፈታኝ ሁኔታዎች'),
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
              ListTile(
                  title: Text(
                    'ጥናት_10',
                    style: TextStyle(fontSize: 27),
                  ),
                  subtitle: Text('የእግዚአብሔር ታለቅ ምህረት '),
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
              ListTile(
                  title: Text(
                    'ጥናት_11',
                    style: TextStyle(fontSize: 27),
                  ),
                  subtitle: Text('አመኔታ - አለቦታው '),
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
              ListTile(
                  title: Text(
                    'ጥናት_12',
                    style: TextStyle(fontSize: 27),
                  ),
                  subtitle: Text('ለጋስነት '),
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
