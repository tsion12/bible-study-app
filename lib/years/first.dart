import 'package:allover/materials/first_materials/one.dart';
import 'package:allover/pages/aboutus.dart';
import 'package:allover/pages/socialmedia.dart';
import 'package:allover/years/first.dart';
import 'package:allover/years/fourth.dart';
import 'package:allover/years/second.dart';
import 'package:allover/years/third.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FirstPageState();
  }
}

class _FirstPageState extends State<FirstPage> {
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
                  subtitle: Text('የሕብረት በረከት '),
                  trailing: IconButton(
                    icon: Icon(Icons.arrow_forward),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => OneStudy()));
                    },
                  )),
              ListTile(
                  title: Text(
                    'ጥናት_2',
                    style: TextStyle(fontSize: 27),
                  ),
                  subtitle: Text('እኛ በህብረት ውስጥ '),
                  leading: Icon(Icons.calendar_today),
                  trailing: IconButton(
                    icon: Icon(Icons.arrow_forward),
                    onPressed: () {},
                  )),
              ListTile(
                  title: Text(
                    'ጥናት_3',
                    style: TextStyle(fontSize: 27),
                  ),
                  subtitle: Text('በአንዳች አትጨነቁ '),
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
                  subtitle: Text('ህልውናውን መናፈቅ '),
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
                  subtitle: Text('ጸሎት'),
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
                  subtitle: Text('የጊዜ አጠቃቀም '),
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
                  subtitle: Text('የልቀት መንገድ '),
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
                  subtitle: Text('የጊዜ አጠቃቀም '),
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
                  subtitle: Text('እግዚአብሔር በህይወታችን ላይ ያለው አላማ '),
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
                  subtitle: Text('ጓደኝነት'),
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
                  subtitle: Text('የመጀመሪያ አመትና ፍቅር '),
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
                  subtitle: Text('የእግዚአብሔርን ቃል በግል ማወቅ  '),
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
                  subtitle: Text('አዎንታዊ ተፅዕኖ '),
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
                  subtitle: Text('ወንጌልን መመስከር '),
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
                  subtitle: Text('ድህረ - ዘመናዊነት'),
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
                    'ጥናት_16',
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
