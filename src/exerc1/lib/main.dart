import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.44,
                          height: MediaQuery.of(context).size.height * 0.25,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(2.0),
                          ),
                          child: Icon(
                            Icons.window,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.44,
                          height: MediaQuery.of(context).size.height * 0.25,
                          decoration: BoxDecoration(
                            color: Colors.deepOrange,
                            borderRadius: BorderRadius.circular(2.0),
                          ),
                          child: Icon(
                            Icons.send_rounded,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          height: MediaQuery.of(context).size.height * 0.125,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(2.0),
                          ),
                          child: Icon(
                            Icons.wifi_rounded,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(5),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.25,
                                  height:
                                      MediaQuery.of(context).size.height * 0.25,
                                  decoration: BoxDecoration(
                                    color: Colors.amber,
                                    borderRadius: BorderRadius.circular(2.0),
                                  ),
                                  child: Icon(
                                    Icons.camera,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.25,
                                  height:
                                      MediaQuery.of(context).size.height * 0.113,
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(255, 212, 19, 5),
                                    borderRadius: BorderRadius.circular(2.0),
                                  ),
                                  child: Icon(
                                    Icons.bluetooth,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(5),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.22,
                                  height:
                                      MediaQuery.of(context).size.height * 0.113,
                                  decoration: BoxDecoration(
                                    color: Colors.brown,
                                    borderRadius: BorderRadius.circular(2.0),
                                  ),
                                  child: Icon(
                                    Icons.menu_book_outlined,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.22,
                                  height:
                                      MediaQuery.of(context).size.height * 0.25,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(2.0),
                                  ),
                                  child: Icon(
                                    Icons.airline_seat_legroom_extra,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            Row(
              children: [
                Padding(
                                padding: const EdgeInsets.all(5),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.720,
                                  height:
                                      MediaQuery.of(context).size.height * 0.182,
                                  decoration: BoxDecoration(
                                    color: Colors.pink,
                                    borderRadius: BorderRadius.circular(2.0),
                                  ),
                                  child: Icon(
                                    Icons.battery_full,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.220,
                                  height:
                                      MediaQuery.of(context).size.height * 0.182,
                                  decoration: BoxDecoration(
                                    color: Colors.purple,
                                    borderRadius: BorderRadius.circular(2.0),
                                  ),
                                  child: Icon(
                                    Icons.monitor,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                              ),
              ],
            ),
            Row(
              children: [
                Padding(
                                padding: const EdgeInsets.all(5),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.970,
                                  height:
                                      MediaQuery.of(context).size.height * 0.170,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(2.0),
                                  ),
                                  child: Icon(
                                    Icons.radio_rounded,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                              ),
              ],
            )
            ],
          ),
        ),
      ),
    );
  }
}
