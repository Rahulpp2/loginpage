import 'dart:js_util';

import 'package:flutter/material.dart';

void main() {
  runApp(const proj());
}
class proj extends StatefulWidget {
  const proj({Key? key}) : super(key: key);

  @override
  State<proj> createState() => _projState();
}

class _projState extends State<proj> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(leading: BackButton()),
        body: Center(
        child: Column(
          children: [
            Text('Sign in',style: TextStyle(color: Colors.red,fontSize: 40),),
            Container(
              width: 600,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'E-mail',
                ),
              ),
            ),
            SizedBox(height: 40),
            Container(
              width: 600,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Username',
                ),
              ),
            ),
          SizedBox(height: 40),
          TextButton(onPressed: null,
            child: Text("Log in", style: TextStyle(fontSize: 25,color: Colors.white),),
            style: TextButton.styleFrom(backgroundColor: Colors.red),
            ),
            Text('OR'),
          TextButton(onPressed: null,
            child: Text("Facebook Login", style: TextStyle(fontSize: 25,color: Colors.white),),
            style: TextButton.styleFrom(backgroundColor: Colors.red),
          ),
          ],
        ),
        ),
      ),
    );
  }
}

