import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: [MyImage(), MyRes(), MyRes(), MyRes(), MyRes()],
        ),
      ),
    );
  }
}

class MyImage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        //imgae
        Container(
          child: Image.asset(
            'assets/images/vegi.jpg',
            fit: BoxFit.cover,
            height: 145,
          ),
        ),
        // resturent & filter
        Container(
          margin: EdgeInsets.only(left: 20, right: 40, top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [Text("4 Resturents")],
              ),
              Row(
                children: [
                  IconButton(icon: Icon(Icons.menu), onPressed: () {}),
                  Text("Sort/Filter")
                ],
              )
            ],
          ),
        ),
        //
      ],
    ));
  }
}

class MyRes extends StatelessWidget {
  // This widget is the root of your application.
  String _text = '4.3  31 mins   \$200 for two';
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 90),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Image.asset(
                'assets/images/k.jpg',
                width: 100,
                height: 100,
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Burger Farm",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text("Fast Food, America"),
              Text(
                '                                                ',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 15,
                  ),
                  Text(_text),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
