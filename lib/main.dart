import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      color: Colors.transparent,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('images/chandan.png'),
                ),
                const Text(
                    "Chandan",
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Playwrite',
                    ),
                ),
                const Text(
                    "Flutter Developer",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'SourceSans',
                      letterSpacing: 4,
                    ),
                ),
                SizedBox(
                  height: 20,
                  width: 150,
                  child: Divider(
                    color: Colors.white,
                  ),
                ),
                CustomCard(icon: Icons.phone, text: "+91 98 76 543 210"),
                CustomCard(icon: Icons.email, text: "chandan@appdeskservices.com")
              ],
        )),
      ),
    );
  }
}

 
class CustomCard extends StatelessWidget {
  final IconData icon;
  final String text;

  const CustomCard({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: ListTile(
          leading: Icon(
            icon,
            color: Colors.teal,
          ),
          title: Text(
            text,
            style: const TextStyle(
              color: Colors.teal,
              fontSize: 20,
              fontFamily: 'SourceSans',
            ),
          )
        ),
      ),
    );
  }
}
