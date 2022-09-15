import 'package:flutter/material.dart';
import 'package:labfour/Home.dart';

class screen_one extends StatefulWidget {
  const screen_one({super.key});

  @override
  State<screen_one> createState() => _screen_oneState();
}

class _screen_oneState extends State<screen_one> {
  String city1 = "";
  String city2 = "";
  String city3 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage("images/family.jpeg")),
                ),
        child: Column(children: [
          Divider(height: 40,),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 240, 198, 139),
              onPrimary: Color.fromARGB(255, 241, 171, 145),
              padding: EdgeInsets.all(30),
            ),
            onPressed: () {
              setState(() {
                Navigator.pop(context, MaterialPageRoute(
                  builder: (context) {
                    return Home();
                  },
                ));
              });
            },
            child: Text("Back To Home Page",
                style: TextStyle(fontSize: 20, color: Colors.white)),
          ),
          Divider(
            height: 100,
          ),
          Card(
            color: Color.fromARGB(255, 133, 171, 237),
            shadowColor: Color.fromARGB(255, 179, 76, 39),
            elevation: 30,
            margin: EdgeInsets.all(50),
            child: Text(
              "Where you want to travel ? ",
              style: TextStyle(
                  color: Color.fromARGB(255, 244, 114, 67), fontSize: 20),
            ),
          ),
          RadioListTile(
            isThreeLine: true,
            title: Text("Jordan"),
            subtitle: Text("Amman"),
            secondary: Icon(Icons.location_city),
            value: "City",
            groupValue: city1,
            onChanged: (val) {
              setState(() {
                city1 = val.toString();
              });
            },
          ),
          RadioListTile(
            isThreeLine: true,
            title: Text("Maldive"),
            subtitle: Text("Land"),
            secondary: Icon(Icons.location_city),
            value: "City",
            groupValue: city2,
            onChanged: (val) {
              setState(() {
                city2 = val.toString();
              });
            },
          ),
          RadioListTile(
            isThreeLine: true,
            title: Text("England"),
            subtitle: Text("London"),
            secondary: Icon(Icons.location_city),
            value: "City",
            groupValue: city3,
            onChanged: (val) {
              setState(() {
                city3 = val.toString();
              });
            },
          ),
        ]),
      ),
    );
  }
}
