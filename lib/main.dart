import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final Map jsonData = <int, Map>{
    1: {
      'icon': "assets/images/prince.jpg",
      'title': "Prince Bioh",
      'subtitle': "Software Engineer",
      'trailing': "Active"
    },
    2: {
      'icon': "assets/images/davies.jpg",
      'title': "Samuel Davies",
      'subtitle': "DevOps Engineer",
      'trailing': "Active"
    },
    3: {
      'icon': "assets/images/sly.jpg",
      'title': "Sylvanus Lamptey",
      'subtitle': "Frontend Developer",
      'trailing': "Active"
    },
    4: {
      'icon': "assets/images/vivian.jpg",
      'title': "Vivian Mensah",
      'subtitle': "Frontend Developer",
      'trailing': "Active"
    },
    5: {
      'icon': "assets/images/collins.jpg",
      'title': "Collins Huvison",
      'subtitle': "Frontend Developer",
      'trailing': "Active"
    },
    6: {
      'icon': "assets/images/calvin.jpg",
      'title': "Calvin Tettey",
      'subtitle': "UI/UX Developer",
      'trailing': "Active"
    }
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("STACKS DEVS"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: ListView.builder(
          itemCount: 6, 
          itemBuilder: (context, index) {
            return ListTile(
              leading: Card(
                elevation: 20,
                clipBehavior: Clip.antiAlias,
                shape: const CircleBorder(),
                child: Image.asset(
                  jsonData[index + 1]['icon'],
                  height: 150,
                  width: 50,
                ),
              ),
              title: Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text(
                  jsonData[index + 1]['title'],
                  style: const TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w800,
                      fontFamily: "Verdana"),
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(left: 17),
                child: Text(
                  jsonData[index + 1]['subtitle'],
                  style: const TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 13,
                      fontFamily: "Verdana"),
                ),
              ),
              trailing: Text(jsonData[index + 1]['trailing']),
              onTap: () =>
                  print("You Tapped ${jsonData[index + 1]['title']} !"),
            );
          },
        ));
  }
}
