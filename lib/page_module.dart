import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test2/controller.dart';
import 'package:test2/page1.dart';
import 'package:test2/page2.dart';
import 'package:test2/page3.dart';

class PageModule extends StatefulWidget {
  const PageModule({Key? key}) : super(key: key);

  @override
  State<PageModule> createState() => _PageModuleState();
}

class _PageModuleState extends State<PageModule> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) {
        return PageGlobalController(0);
      },
      child: Navigator(
        // [
        //   MaterialPageRoute(builder: (context) => const PageOne()),
        // ],
        onGenerateInitialRoutes: Navigator.defaultGenerateInitialRoutes,
        onGenerateRoute: (settings) {
          if (settings.name == '/') {
            return MaterialPageRoute(builder: (context) => const PageOne());
          }
          if (settings.name == '/page1') {
            return MaterialPageRoute(builder: (context) => const PageOne());
          }
          if (settings.name == '/page2') {
            return MaterialPageRoute(builder: (context) => const PageTwo());
          }
          if (settings.name == '/page3') {
            return MaterialPageRoute(builder: (context) => const PageThree());
          }
          Navigator.of(context).pop();
        },
      ),
    );
  }
}

class QLQR {
  bool? isTrue;
  @override
  String toString() {
    print('test done');
    return super.toString();
  }
}
