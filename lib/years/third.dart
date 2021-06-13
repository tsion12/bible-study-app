import 'package:allover/pages/aboutus.dart';
import 'package:allover/pages/socialmedia.dart';
import 'package:allover/years/first.dart';
import 'package:allover/years/fourth.dart';
import 'package:allover/years/second.dart';
import 'package:allover/years/third.dart';
import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ThirdPageState();
  }
}

class _ThirdPageState extends State<ThirdPage> {
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
                  'ጥናት_ 1 ',
                  style: TextStyle(fontSize: 27),
                ),
                leading: Icon(Icons.calendar_today),
                subtitle: Text('የማያቐርጥ እድገት '),
                trailing: IconButton(
                  icon: Icon(Icons.arrow_forward),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FirstPage()));
                  },
                )),
            ListTile(
                title: Text(
                  'ጥናት_ 2',
                  style: TextStyle(fontSize: 27),
                ),
                subtitle: Text('ጽናት '),
                leading: Icon(Icons.calendar_today),
                trailing: IconButton(
                  icon: Icon(Icons.arrow_forward),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SecondPage()));
                  },
                )),
            ListTile(
                title: Text(
                  'ጥናት_ 3 ',
                  style: TextStyle(fontSize: 27),
                ),
                subtitle: Text('የግል ተሃድሶ '),
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
                subtitle: Text('ወደፊት መዘርጋት '),
                leading: Icon(Icons.calendar_today),
                trailing: IconButton(
                  icon: Icon(Icons.arrow_forward),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FourthPage()));
                  },
                )),
            ListTile(
                title: Text(
                  'ጥናት_5',
                  style: TextStyle(fontSize: 27),
                ),
                subtitle: Text('በንፅህና መኖር Ι'),
                leading: Icon(Icons.calendar_today),
                trailing: IconButton(
                  icon: Icon(Icons.arrow_forward),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FourthPage()));
                  },
                )),
            ListTile(
                title: Text(
                  'ጥናት_6',
                  style: TextStyle(fontSize: 27),
                ),
                subtitle: Text('በንፅህና መኖር ΙΙ  '),
                leading: Icon(Icons.calendar_today),
                trailing: IconButton(
                  icon: Icon(Icons.arrow_forward),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FourthPage()));
                  },
                )),
            ListTile(
                title: Text(
                  'ጥናት_7',
                  style: TextStyle(fontSize: 27),
                ),
                subtitle: Text('የእግዚአብሔር ፀጋ '),
                leading: Icon(Icons.calendar_today),
                trailing: IconButton(
                  icon: Icon(Icons.arrow_forward),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FourthPage()));
                  },
                )),
            ListTile(
                title: Text(
                  'ጥናት_8',
                  style: TextStyle(fontSize: 27),
                ),
                subtitle: Text('የታላቅነት መንገድ '),
                leading: Icon(Icons.calendar_today),
                trailing: IconButton(
                  icon: Icon(Icons.arrow_forward),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FourthPage()));
                  },
                )),
            ListTile(
                title: Text(
                  'ጥናት_9',
                  style: TextStyle(fontSize: 27),
                ),
                subtitle: Text('የክርስቶስ አገልጋዮች '),
                leading: Icon(Icons.calendar_today),
                trailing: IconButton(
                  icon: Icon(Icons.arrow_forward),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FourthPage()));
                  },
                )),
            ListTile(
                title: Text(
                  'ጥናት_10',
                  style: TextStyle(fontSize: 27),
                ),
                subtitle: Text('ውጤታማ ምስክርነት'),
                leading: Icon(Icons.calendar_today),
                trailing: IconButton(
                  icon: Icon(Icons.arrow_forward),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FourthPage()));
                  },
                )),
            ListTile(
                title: Text(
                  'ጥናት_11',
                  style: TextStyle(fontSize: 27),
                ),
                subtitle: Text('ፊልሞና '),
                leading: Icon(Icons.calendar_today),
                trailing: IconButton(
                  icon: Icon(Icons.arrow_forward),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FourthPage()));
                  },
                )),
            ListTile(
                title: Text(
                  'ጥናት_12',
                  style: TextStyle(fontSize: 27),
                ),
                subtitle: Text('ቤተክርሰቲያን  '),
                leading: Icon(Icons.calendar_today),
                trailing: IconButton(
                  icon: Icon(Icons.arrow_forward),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FourthPage()));
                  },
                )),
            ListTile(
                title: Text(
                  'ጥናት_13',
                  style: TextStyle(fontSize: 27),
                ),
                subtitle: Text('የእግዚአብሔር የጦር እቃ '),
                leading: Icon(Icons.calendar_today),
                trailing: IconButton(
                  icon: Icon(Icons.arrow_forward),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FourthPage()));
                  },
                )),
          ],
        ),
      );
    },
  );
}
