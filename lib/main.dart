//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'screens/initial_screen.dart';
// import 'package:flutter/services.dart';

main() => runApp(_FootBallManager());

class _FootBallManager extends StatelessWidget {
//  const FootBallManager({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        
        appBarTheme: AppBarTheme(color: Color.fromARGB(255, 3, 73, 130)),
      ),
      home: InitialScreen(),
    );
  }
}
  



      // routes: {
      //   AppRoute.HOME: (ctx) => InitialScreen(),
      // },