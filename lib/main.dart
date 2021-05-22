import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dialer App',
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var contactList = ['Riya Maharjan', 'Rejina Bhandari', 'Pragya Sapkota'];
  var phoneNumber = ['98711111111', '98711111132', '9823627192'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(contactList[index]),
            subtitle: Text(phoneNumber[index]),
            leading: Icon(Icons.supervised_user_circle_rounded),
            trailing: IconButton(
              icon: Icon(Icons.call),
              onPressed: () {
                launch("tel://${phoneNumber[index]}");
              },
            ),
          );
        },
        itemCount: contactList.length,
      ),
      appBar: AppBar(
        title: Text('Phone Dailer App'),
        backgroundColor: Color(0xFFE21717),
      ),
    );
  }
}
