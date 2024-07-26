// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:parcel_app/components/my_listTile.dart';

class ParcelsTab extends StatelessWidget {
  const ParcelsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 80), // Space between title and container
              Expanded(
                child: Center(
                  child: Container(
                    width: double.infinity, // Make the container full width
                    height: 450, // Set a specific height
                    margin: EdgeInsets.symmetric(
                        horizontal: 20), // Margin for horizontal padding
                    padding: EdgeInsets.all(16), // Padding inside the container
                    decoration: BoxDecoration(
                      color: Colors.white, // Background color of the container
                      borderRadius: BorderRadius.circular(12), // Rounded edges
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // Floating effect
                        ),
                      ],
                    ),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        DataTable(
                          columns: [
                            DataColumn(
                                label: Text('OTP',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold))),
                            DataColumn(
                                label: Text('Status',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold))),
                            DataColumn(
                                label: Text('Issued Date',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold))),
                            DataColumn(
                                label: Text('Duration',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold))),
                          ],
                          rows: [
                            DataRow(cells: [
                              DataCell(Text('4429')),
                              DataCell(Text('Pending')),
                              DataCell(Text('26/07/2024')),
                              DataCell(Text('15minutes')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('1429')),
                              DataCell(Text('Expired')),
                              DataCell(Text('26/07/2024')),
                              DataCell(Text('15minutes')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('3780')),
                              DataCell(Text('Pending')),
                              DataCell(Text('26/07/2024')),
                              DataCell(Text('15minutes')),
                            ]),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            FloatingActionButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('Close'),
                      ),
                    ],
                    backgroundColor: Colors.grey[200],
                    title: Text('Generate OTP'),
                    contentPadding: EdgeInsets.all(15),
                    content: Container(
                      height: 150,
                      child: Center(
                        child: Column(
                          children: [
                            const SizedBox(height: 15),
                            MyListtile(label: 'Delivery', icon: Icons.add_box),
                            const SizedBox(height: 20),
                            MyListtile(label: 'Pick-Up', icon: Icons.add_box),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
              backgroundColor: Colors.white,
              foregroundColor: Colors.black, // Set icon color
              child: Icon(Icons.add),
            ),
            SizedBox(width: 8), // Space between button and label
            Text(
              'One-Time Pin (OTP)',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
        floatingActionButtonLocation: CustomFabLocation(),
      ),
    );
  }
}

class CustomFabLocation extends FloatingActionButtonLocation {
  @override
  Offset getOffset(ScaffoldPrelayoutGeometry scaffoldGeometry) {
    // Adjust the Offset here
    return Offset(
      scaffoldGeometry.scaffoldSize.width - 370, // X Position
      scaffoldGeometry.scaffoldSize.height - 600, // Y Position
    );
  }
}
