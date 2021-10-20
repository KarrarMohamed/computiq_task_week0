import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);

  final names = const <String>[
    'Karrar',
    'Haider',
    'Ali',
    'Sajad',
    'Omar',
    'Faris',
    'Ammar',
    'Sami',
    'Jalal',
    'Salman',
    'Sally',
    'Haijaa',
    'Dalal',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Contacts',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 12,
              itemBuilder: (context, pos) => ListTile(
                leading: const Icon(Icons.account_circle),
                title: Text(names[pos]),
                subtitle: const Text('07718239773'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
