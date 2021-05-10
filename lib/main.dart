import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "log in ui",
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomepage(),
    );
  }
}

class MyHomepage extends StatefulWidget {
  @override
  _MyHomepageState createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/3.jpg',
            fit: BoxFit.cover,
            color: Colors.black12,
            colorBlendMode: BlendMode.darken,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset(
                  'assets/images/avatar.png',
                  height: 120.0,
                  width: 120.0,
                ),
              ),
              Stack(
                children: [
                  SingleChildScrollView(
                    child: Container(
                      height: 300.0,
                      width: 380.0,
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 25.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 25.0,
                            ),
                            child: TextField(
                              autocorrect: false,
                              autofocus: false,
                              style: TextStyle(fontSize: 20.0),
                              decoration: InputDecoration(
                                hintText: "user name",
                                border: InputBorder.none,
                                filled: true,
                                fillColor: Colors.grey[200],
                              ),
                            ),
                          ),
                          TextField(
                            autocorrect: false,
                            autofocus: false,
                            obscureText: true,
                            style: TextStyle(fontSize: 20.0),
                            decoration: InputDecoration(
                              hintText: "Password",
                              border: InputBorder.none,
                              filled: true,
                              fillColor: Colors.grey[200],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'Forget Password ?',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w700,
                                  ),
                                )
                              ],
                            ),
                          ),
                          MaterialButton(
                            onPressed: () {},
                            minWidth: 250.0,
                            color: Colors.red,
                            padding: EdgeInsets.symmetric(
                              vertical: 10.0,
                            ),
                            child: Text(
                              'Login',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.amber,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
