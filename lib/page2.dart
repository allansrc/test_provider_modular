import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'controller.dart';
import 'page_module.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    debugPrint('page2');
    final globalController = context.watch<PageGlobalController>();
    return Provider(
      create: (context) => PageTestController('page2'),
      builder: (context, child) => Scaffold(
        appBar: AppBar(
          title: Text(globalController.cnt.toString()),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/page3');
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
