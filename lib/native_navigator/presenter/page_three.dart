import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'controller.dart';

class PageThree extends StatefulWidget {
  const PageThree({Key? key}) : super(key: key);

  @override
  State<PageThree> createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  @override
  Widget build(BuildContext context) {
    debugPrint('page3');
    final globalController = context.watch<PageGlobalController>();
    return Provider(
      create: (context) => PageTestController('page3'),
      builder: (context, child) => Scaffold(
        appBar: AppBar(
          title: Text(globalController.cnt.toString()),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/page1');
            },
            child: const Text('Navigate'),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            globalController.increment();
          },
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
