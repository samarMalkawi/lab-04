import 'package:flutter/material.dart';
import 'package:labfour/Home.dart';

class screen_two extends StatefulWidget {
  const screen_two({super.key});

  @override
  State<screen_two> createState() => _screen_twoState();
}

class _screen_twoState extends State<screen_two> {
  List myItems = [
    "1 Person",
    "2-5 Person",
    "5-6 Person",
    "more then 6 Person",
  ];
  String mySelected = "1 Person";
  String class1 = "";
  String class2 = "";
  bool pets = false;
  bool medicine = false;
  bool wepone = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage("images/maldives.jpeg")),
                ),
        child: ListView(children: [
          Container(
            color: Color.fromARGB(255, 233, 209, 200),
            alignment: Alignment.center,
            child: Text(
              "please enter your information",
              style: TextStyle(
                  fontSize: 30, color: Color.fromARGB(255, 49, 78, 102)),
            ),
          ),
          Divider(height: 50, color: Color.fromARGB(255, 253, 247, 192)),
          DropdownButton(
            dropdownColor: Color.fromARGB(255, 173, 211, 243),
            value: mySelected,
            items: myItems
                .map((e) => DropdownMenuItem(
                    value: e,
                    child: Text(
                      "$e",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    )))
                .toList(),
            onChanged: (val) {
              setState(() {
                mySelected = val.toString();
              });
            },
          ),
          Divider(
            height: 50,
          ),
          Text(
            "please select your class..",
            style: TextStyle(
                fontSize: 30,
                color: Color.fromARGB(255, 124, 189, 242),
                fontWeight: FontWeight.bold),
          ),
          RadioListTile(
            
            title: Text("Business",style: TextStyle(fontSize: 20,color: Colors.white,),),
            subtitle: Text("250DJ per person..",style: TextStyle(fontSize: 20,color: Colors.white,),),
            secondary: Icon(Icons.airplane_ticket,color:Colors.white),
            value: "class",
            groupValue: class1,
            onChanged: (val) {
              setState(() {
                class1 = val.toString();
              });
            },
          ),
          RadioListTile(
            title: Text("Economy",style: TextStyle(fontSize: 20,color: Colors.white,),),
            subtitle: Text("100DJ per person..",style: TextStyle(fontSize: 20,color: Colors.white,),),
            secondary: Icon(Icons.airplane_ticket,color:Colors.white ),
            value: "class",
            groupValue: class2,
            onChanged: (val) {
              setState(() {
                class2 = val.toString();
              });
            },
          ),
          Divider(
            height: 60,
          ),
          Text(
            "Please select whatever you have during the trip",
            style: TextStyle(
                fontSize: 30,
                color: Color.fromARGB(255, 124, 189, 242),
                fontWeight: FontWeight.bold),
          ),
          Divider(
            height: 10,
            color: Color.fromARGB(255, 187, 218, 243),
          ),
          CheckboxListTile(
            isThreeLine: true,
            title: Text(
              "pets",
              style: TextStyle(
                  fontSize: 30,
                  color: Color.fromARGB(255, 25, 157, 29),
                  fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              "cat,dog,..",
              style: TextStyle(
                  fontSize: 30, color: Color.fromARGB(255, 170, 233, 172)),
            ),
            secondary: Icon(Icons.pets),
            value: pets,
            onChanged: (val) {
              setState(() {
                pets = val!;
              });
            },
          ),
          CheckboxListTile(
            isThreeLine: true,
            title: Text("medicine",
                style: TextStyle(
                    fontSize: 30, color: Color.fromARGB(255, 25, 157, 29))),
            subtitle: Text(
              "pills,needles,..",
              style: TextStyle(
                  fontSize: 30, color: Color.fromARGB(255, 170, 233, 172)),
            ),
            secondary: Icon(Icons.medical_information),
            value: medicine,
            onChanged: (val) {
              setState(() {
                medicine = val!;
              });
            },
          ),
          CheckboxListTile(
            isThreeLine: true,
            title: Text("wepone",
                style: TextStyle(
                    fontSize: 30, color: Color.fromARGB(255, 25, 157, 29))),
            subtitle: Text(
              "knife,Pistol,gun..",
              style: TextStyle(
                  fontSize: 30, color: Color.fromARGB(255, 170, 233, 172)),
            ),
            secondary: Icon(Icons.close),
            value: wepone,
            onChanged: (val) {
              setState(() {
                wepone = val!;
              });
            },
          ),
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
        ]),
      ),
    );
  }
}
