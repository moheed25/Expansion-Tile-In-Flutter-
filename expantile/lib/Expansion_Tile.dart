import 'package:flutter/material.dart';

class Expansion extends StatefulWidget {
  const Expansion({super.key});

  @override
  State<Expansion> createState() => _ExpansionState();
}

class _ExpansionState extends State<Expansion> {
  List<String> name = [
    'Janury',
    'Feburay ',
    'March',
    'April',
    'May',
    'June ',
    'July ',
    'August'
  ];

  List<String> countries = [
    'Pakistan ',
    'India',
    'China',
    'Iran',
    ' Iraq',
    "England",
    'London',
    'Canada'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expandable Listview Builder"),
      ),
      body: Center(
          child: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  itemCount: name.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: ExpansionTile(
                        title: Text(
                          name[index].toString(),
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        children: [
                          Container(
                            height: 150,
                            child: ListView.builder(
                                itemCount: countries.length,
                                itemBuilder: (context, index) {
                                  return ListTile(
                                    title: Text(
                                      countries[index].toString(),
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  );
                                }),
                          )
                        ],
                      ),
                    );
                  }))
        ],
      )),
    );
  }
}
