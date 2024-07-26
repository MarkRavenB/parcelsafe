// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class FeedersTab extends StatefulWidget {
  const FeedersTab({super.key});

  @override
  State<FeedersTab> createState() => _FeedersTabState();
}

class _FeedersTabState extends State<FeedersTab> {
  bool isSwitched_1 = false;
  bool isSwitched_2 = false;
  bool isSwitched_3 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'ECOGUARD',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_rounded),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.person_rounded),
          ),
        ],
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
      ),
      //Body
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 25),
              Text(
                'FEEDERS',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),
              Container(
                width: 350,
                height: 170,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.yellow[400],
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(2.0, 3.0),
                      blurRadius: 8.0,
                      spreadRadius: 1.0,
                    ),
                  ],
                ),
                // CONTAINER 1
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text('Feeder 1 status:'),
                          const SizedBox(height: 30),
                          Switch(
                            value: isSwitched_1,
                            onChanged: (value) {
                              setState(
                                () {
                                  isSwitched_1 = value;
                                },
                              );
                            },
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text('Feed Level:'),
                          const SizedBox(height: 10),
                          Container(
                            height: 100,
                            width: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.green),
                            child: Center(
                              child: Text(
                                '100%',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15),
              // CONTAINER 2
              Container(
                width: 350,
                height: 170,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.yellow[400],
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(2.0, 3.0),
                      blurRadius: 8.0,
                      spreadRadius: 1.0,
                    ),
                  ],
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text('Feeder 2 status:'),
                          const SizedBox(height: 30),
                          Switch(
                            value: isSwitched_2,
                            onChanged: (value) {
                              setState(
                                () {
                                  isSwitched_2 = value;
                                },
                              );
                            },
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text('Feed Level:'),
                          const SizedBox(height: 10),
                          Container(
                            height: 100,
                            width: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.yellow[900]),
                            child: Center(
                              child: Text(
                                '50%',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15),
              // CONTAINER 3
              Container(
                width: 350,
                height: 170,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.yellow[400],
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(2.0, 3.0),
                      blurRadius: 8.0,
                      spreadRadius: 1.0,
                    ),
                  ],
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text('Feeder 3 status:'),
                          const SizedBox(height: 30),
                          Switch(
                            value: isSwitched_3,
                            onChanged: (value) {
                              setState(
                                () {
                                  isSwitched_3 = value;
                                },
                              );
                            },
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text('Feed Level:'),
                          const SizedBox(height: 10),
                          Container(
                            height: 100,
                            width: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.red),
                            child: Center(
                              child: Text(
                                '10%',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
