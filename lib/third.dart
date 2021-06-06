import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("User Details"),
        ),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [
                Icon(
                  Icons.person,
                  size: 200,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("USer"),
                    Text("Abc@gmail.com"),
                    Text("Logout")
                  ],
                )
              ]),
              Text(
                "Account Information",
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Full Name",
                style: TextStyle(fontSize: 20),
              ),
              Text("user"),
              SizedBox(
                height: 10,
              ),
              Text(
                "Email",
                style: TextStyle(fontSize: 20),
              ),
              Text("user@gmail.com"),
              SizedBox(
                height: 10,
              ),
              Text(
                "Phone",
                style: TextStyle(fontSize: 20),
              ),
              Text("+0900-786 01"),
              SizedBox(
                height: 10,
              ),
              Text(
                "Address",
                style: TextStyle(fontSize: 20),
              ),
              Text("New York,Random Street House No. 72"),
              SizedBox(
                height: 10,
              ),
              Text(
                "Gender",
                style: TextStyle(fontSize: 20),
              ),
              Text("male"),
              SizedBox(
                height: 10,
              ),
              Text(
                "Date of Birth",
                style: TextStyle(fontSize: 20),
              ),
              Text("October 13 1999")
            ],
          ),
        ),
      ),
    );
  }
}
