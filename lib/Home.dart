import 'package:flutter/material.dart';
import 'package:labfour/screen_one.dart';
import 'package:labfour/screen_two.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(fit: BoxFit.cover,image: AssetImage("images/plane.jpg"))),
        child: Column(
          children: [
            Card(
              color: Color.fromARGB(255, 250, 179, 153),
              margin: EdgeInsets.all(50),
              elevation: 30,
              shadowColor: Color.fromARGB(255, 255, 195, 66),
              child: Text(
                "Welecome to our Travel app",
                style: TextStyle(
                    fontSize: 30,
                    color: Color.fromARGB(255, 99, 49, 31),
                    fontStyle: FontStyle.italic),
              ),
            ),
            Divider(
              height: 150,
            ),
            ElevatedButton.icon(
              onPressed: () {
                setState(() {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return screen_one();
                    },
                  ));
                });
              },
              icon: Icon(Icons.public),
              label: Text(
                "Choose your flight location",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            Divider(
              height: 30,
            ),
            ElevatedButton.icon(
              onPressed: () {
                setState(() {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return screen_two();
                    },
                  ));
                });
              },
              icon: Icon(Icons.airplane_ticket),
              label: Text(
                "Book a ticket",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
