import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'controller.dart';

class PageOne extends StatefulWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    debugPrint('page1');
    final globalController = context.watch<PageGlobalController>();

    return Provider(
      create: (context) => PageTestController('page1'),
      builder: (context, child) => Scaffold(
        appBar: AppBar(
          title: Text(globalController.cnt.toString()),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/page2');
                },
                child: const Text('Navigate'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/pop');
                },
                child: const Text('pop'),
              ),
            ],
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
