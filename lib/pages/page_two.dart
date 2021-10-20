import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

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
      child: ListView.builder(
        itemCount: 12,
        itemBuilder: (context, pos) => ListTile(
          leading: Icon(
            pos.isEven ? Icons.arrow_downward : Icons.arrow_upward,
            color: pos.isEven ? Colors.green : Colors.blue,
          ),
          title: Text(names[pos]),
          subtitle: const Text('07718239773'),
        ),
      ),
    );
  }
}
