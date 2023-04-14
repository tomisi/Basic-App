import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyApp',
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.light,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Settings'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          children: [
            SizedBox(height: 32.0),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AccountPage()),
                );
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 25,
                    child: Text('DC'),
                  ),
                  SizedBox(width: 16.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'David Clerisseau',
                        style: Theme.of(context).textTheme.subtitle1!.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Personal info',
                        style: Theme.of(context).textTheme.caption!.copyWith(
                              color: Colors.grey,
                            ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Icon(Icons.arrow_forward),
                ],
              ),
            ),
            SizedBox(height: 32.0),
            Text(
              'Language',
              style: Theme.of(context).textTheme.headline6!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            SizedBox(height: 24.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.language, size: 24),
                    SizedBox(width: 8),
                    Text(
                      'Language',
                      style: Theme.of(context).textTheme.subtitle1!.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('English'),
                    Switch(
                      value: false,
                      onChanged: (value) {},
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 32.0),
            Text(
              'Notifications',
              style: Theme.of(context).textTheme.headline6!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            SizedBox(height: 24.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'App notifications',
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('On'),
                    Switch(
                      value: true,
                      onChanged: (value) {},
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 32.0),
            Text(
              'Dark mode',
              style: Theme.of(context).textTheme.headline6!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            SizedBox(height: 24.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Dark mode',
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Off'),
                    Switch(
                      value: false,
                      onChanged: (value) {},
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 32.0),
            Text(
              'Notifications',
              style: Theme.of(context).textTheme.headline6!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            SizedBox(height: 24.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'App notifications',
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('On'),
                    Switch(
                      value: true,
                      onChanged: (value) {},
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    title: 'n',
    home: MyApp(),
  ));
}

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account'),
      ),
      body: Container(
        width: 375,
        height: 812,
        decoration: BoxDecoration(
          color: Color(0xffede9e9),
        ),
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 220,
              left: 29,
              child: Text(
                'Photo',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color.fromRGBO(106, 106, 106, 1),
                  fontFamily: 'Nunito',
                ),
              ),
            ),
            Positioned(
              top: 467,
              left: 27,
              child: Container(
                decoration: BoxDecoration(),
                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      'Name',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromRGBO(106, 106, 106, 1),
                        fontFamily: 'Nunito',
                        fontSize: 12,
                        letterSpacing: 0,
                        fontWeight: FontWeight.normal,
                        height: 1,
                      ),
                    ),
                    SizedBox(height: 50),
                    Text(
                      'Gender',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromRGBO(106, 106, 106, 1),
                        fontFamily: 'Nunito',
                        fontSize: 12,
                        letterSpacing: 0,
                        fontWeight: FontWeight.normal,
                        height: 1,
                      ),
                    ),
                    SizedBox(height: 50),
                    Text(
                      'Age',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromRGBO(106, 106, 106, 1),
                        fontFamily: 'Nunito',
                        fontSize: 12,
                        letterSpacing: 0,
                        fontWeight: FontWeight.normal,
                        height: 1,
                      ),
                    ),
                    SizedBox(height: 50),
                    Text(
                      'Email',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromRGBO(106, 106, 106, 1),
                        fontFamily: 'Nunito',
                        fontSize: 12,
                        letterSpacing: 0,
                        fontWeight: FontWeight.normal,
                        height: 1,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 403,
              left: 143,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/uploadImage');
                },
                child: Text(
                  'Upload Image',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color.fromRGBO(0, 132, 255, 1),
                    fontFamily: 'Nunito',
                    fontSize: 14,
                    letterSpacing: 0,
                    fontWeight: FontWeight.normal,
                    height: 1,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
