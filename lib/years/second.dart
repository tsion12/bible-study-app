import 'package:allover/pages/aboutus.dart';
import 'package:allover/pages/socialmedia.dart';
import 'package:allover/years/first.dart';
import 'package:allover/years/fourth.dart';
import 'package:allover/years/second.dart';
import 'package:allover/years/third.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SecondPageState();
  }
}

class _SecondPageState extends State<SecondPage> {
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
                  subtitle: Text('ህልውናውን መናፈቅ '),
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
                  subtitle: Text('ትጋት'),
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
                  subtitle: Text('ትህትና'),
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
                  subtitle: Text('ፌዘኝነት '),
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
                  subtitle: Text('ግብዝነት'),
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
                  subtitle: Text('ራስን መግዛት '),
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
                  subtitle: Text(' ፍቅር '),
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
                  subtitle: Text(' ታማኝነት '),
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
                  subtitle: Text('ጾታዊ ግንኙነት I'),
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
                  subtitle: Text('ጾታዊ ግንኙነት II'),
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
                  subtitle: Text('ፍሬያማ ህይወት '),
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
                  subtitle: Text('አጋጣሚን ለወንጌል '),
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
                    'ጥናት_13',
                    style: TextStyle(fontSize: 27),
                  ),
                  subtitle: Text('እውነተኛ አምልኮ  '),
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
                    'ጥናት_14',
                    style: TextStyle(fontSize: 27),
                  ),
                  subtitle: Text('ትርፋማነት'),
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
                    'ጥናት_15',
                    style: TextStyle(fontSize: 27),
                  ),
                  subtitle: Text('ቤተክርስቲያን'),
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
