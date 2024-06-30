import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
                    const EdgeInsets.symmetric(vertical: 50, horizontal: 35),
                child: Container(
                  height: 40,
                  decoration: const BoxDecoration(
                  color:  Color.fromARGB(255, 229, 226, 226),
                    borderRadius: BorderRadius.all(Radius.circular(3)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 100,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(3))),
                          child: const Center(
                            child: Text(
                              "History",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        const Text(
                          "Transaction Summary",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color.fromARGB(255, 143, 126, 126),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const Divider(
                indent: BorderSide.strokeAlignOutside,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 30,
                  horizontal: 30,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 229, 226, 226),
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Search",
                      fillColor: Colors.grey,
                      prefixIcon: Icon(Icons.search),
                      border: InputBorder.none,
                    ),
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
                      Icons.home_filled,
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
