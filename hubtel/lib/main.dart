import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: ListView(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 50, horizontal: 50),
                child: Container(
                  height: 40,
                  decoration: const BoxDecoration(color: Colors.grey),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 25,
                        width: 100,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                        child: const Center(child: Text("History")),
                      ),
                      const Text("Transaction Summary")
                    ],
                  ),
                ),
              )
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
              selectedItemColor: Colors.black,
              showSelectedLabels: true,
              showUnselectedLabels: true,
              unselectedItemColor: Colors.grey,
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home,
                    ),
                    label: "Home"),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.send_to_mobile_rounded,
                    ),
                    label: "Send"),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.horizontal_split_rounded,
                    ),
                    label: "History"),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.calendar_today,
                    ),
                    label: "Schedule"),
              ])),
    );
  }
}
