import 'package:exersice3/third.dart';
import 'package:flutter/material.dart';

class MyAbc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return MaterialApp(
      home: Scaffold(
          body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          MyIcon(),
          MyStore(),
          MyTxt(),
          Mytextss(),
          Mytextss(),
          Mytextss(),
          Mytextss(),
        ],
      )),
    );
  }
}

class MyIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    //final height = MediaQuery.of(context).size.height;
    return Container(
      child: Row(
        children: <Widget>[
          IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext conntext) => Detail()));
              }),
          SizedBox(
            width: width * 0.01,
          ),
          //IconButton(icon: Icon(Icons.arrow_back), onPressed: () {}),
          Container(
            margin: EdgeInsets.only(left: width * 0.7),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage('assets/images/logo.jpg'))),
            width: 40.0,
            height: 40.0,
          )
        ],
      ),
    );
  }
}

class MyStore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15),
      child: Text(
        "Stores",
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30.0),
      ),
    );
  }
}

class MyTxt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height: height * 0.1,
      child: Row(
        children: [
          Flexible(
            child: Container(
              padding: EdgeInsets.all(15.0),
              child: TextField(
                decoration: new InputDecoration(
                    suffixIcon: IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {},
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        const Radius.circular(30.0),
                      ),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    hintStyle: new TextStyle(color: Colors.black),
                    hintText: "Search",
                    fillColor: Colors.grey[10]),
              ),
            ),
          ),
          IconButton(icon: Icon(Icons.menu_open), onPressed: () {})
        ],
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  String title, txt;
  MyCard(this.title, this.txt);
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      width: width * 0.1,
      height: height * 0.3,
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                width: width,
                height: height * 0.2,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/vegi.jpg'),
                        fit: BoxFit.cover))),
            Text(
              title,
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              txt,
              style: TextStyle(color: Colors.black, fontSize: 16.0),
            )
          ],
        ),
      ),
    );
  }
}

class Mytt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //final width = MediaQuery.of(context).size.width;
    //final height = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey.withOpacity(0.5),
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(4.0),
      ),
      margin: EdgeInsets.all(12),
      child: Row(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 8),
            child: Icon(
              Icons.search,
              color: Colors.grey,
              size: 20,
            ),
          ),
          new Expanded(
            child: TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Search by Name",
                hintStyle: TextStyle(color: Colors.grey),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                isDense: true,
              ),
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Mytpt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //final width = MediaQuery.of(context).size.width;
    //final height = MediaQuery.of(context).size.height;
    return Container(
        child: Column(
      children: [
        Stack(
          alignment: Alignment.centerLeft,
          children: <Widget>[
            Builder(builder: (context) {
              return Text(
                '',
                style: _decorationStyleOf(context),
              );
            }),
            TextField(
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {},
                ),
                //prefixStyle: TextStyle(color: Colors.transparent),
              ),
            ),
          ],
        )
      ],
    ));
  }
}

TextStyle _decorationStyleOf(BuildContext context) {
  final theme = Theme.of(context);
  return theme.textTheme.subtitle1.copyWith(color: theme.hintColor);
}

class Mypic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          'assets/images/logo.jpg',
          width: width * 1,
          height: height * 0.3,
        ),
        Text(
          "Hello",
          style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
        ),
        Text("Hello Store or Welcome to store")
      ],
    );
  }
}

class MyCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height: height * 0.3,
      child: Card(
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Image.asset(
          'assets/images/vegi.jpg',
          fit: BoxFit.fill,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 5,
        margin: EdgeInsets.all(10),
      ),
    );
  }
}

class Mytext extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
        child: Column(
      children: <Widget>[
        Card(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    width: width,
                    height: height * 0.2,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/vegi.jpg'),
                            fit: BoxFit.cover))),
                Text(
                  "hello",
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  " txt",
                  style: TextStyle(color: Colors.black, fontSize: 16.0),
                )
              ],
            ),
          ),
        )
      ],
    ));
  }
}

class Mytextss extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
        height: height * 0.35,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(25.0),
              child: Card(
                elevation: 28.0,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          width: width,
                          height: height * 0.2,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/vegi.jpg'),
                                  fit: BoxFit.cover))),
                      Container(
                        padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
                        child: Text(
                          "hello",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                        child: Text(
                          " Hello My Friends This is Muhammad Aqib",
                          style: TextStyle(color: Colors.black, fontSize: 16.0),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
