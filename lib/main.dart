import 'package:flutter/material.dart';
import 'package:contact/naverMap.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'First app',
      // theme: ThemeData(
      //   primarySwatch: Colors.deepPurple
      // ),
      debugShowCheckedModeBanner: false,
      home: Fixability(),
    );
  }
}

class Fixability extends StatelessWidget {
  const Fixability({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[500],
      appBar: AppBar(
        title: Text('FIXABILITY'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple[700],
        elevation: 0.0,
        //추가1
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              print('Shopping button is clickd');
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('Search button is clickd');
            },
          ),
        ],
        /*추가1 end*/
      ),
      //추가2
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/appBar_image3.jpg'),
                backgroundColor: Colors.white,
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/appBar_image4.jpg'),
                ),
                // CircleAvatar(
                //   backgroundImage: AssetImage('image4.jpg'),
                // )
              ],
              accountName: Text('yoonsun'),
              accountEmail: Text('yoonsun0719@hanmail.net'),
              onDetailsPressed: () {
                print('arrow is clicked');
              },
              decoration: BoxDecoration(
                  color: Colors.deepPurple[200],
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0))),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.grey[850],
              ),
              title: Text('Home'),
              onTap: () {

                print('Home is Clicked');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.grey[850],
              ),
              title: Text('Settings'),
              onTap: () {
                print('Settings is Clicked');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(
                Icons.question_answer,
                color: Colors.grey[850],
              ),
              title: Text('Q&A'),
              onTap: () {
                print('Q&A is Clicked');
              },
              trailing: Icon(Icons.add),
            ),
          ],
        ),
      ),
      /*추가2 end*/
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/image1.jpg'),
                radius: 100.0,
              ),
            ),
            Divider(
              height: 80.0,
              color: Colors.grey[850],
              thickness: 0.5,
              endIndent: 30.0,
            ),
            Text('Name',
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 2.0,
            ),
            ),
            SizedBox(
              height: 13.0,
            ),
            Text('Fixability',
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 2.0,
              fontSize: 28.0,
              fontWeight: FontWeight.bold
            ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text('Tel',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 13.0,
            ),
            Text('010.1234.1234',
              style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text('Untact Service Platform',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                  letterSpacing: 1.0
                ),
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text('Any time Any Where',
                  style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                      letterSpacing: 1.0
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text('Share Office Service',
                  style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                      letterSpacing: 1.0
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25.0,
            ),
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/image2.jpg'),
                radius: 40.0,
                backgroundColor: Colors.deepPurple[700],
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
          ],
        ),
      ),
    );
  }
}

