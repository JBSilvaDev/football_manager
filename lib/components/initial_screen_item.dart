import 'package:flutter/material.dart';
import '../models/initial_screen_category.dart';

class InitialScreenItem extends StatelessWidget {
  // const MyWidget({Key? key}) : super(key: key);
  final InitialScreenCategory initScreen;
  

  const InitialScreenItem(this.initScreen);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    const initScreens = 'assets/images/initial_screen.png';
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        decoration: const BoxDecoration(
          image: DecorationImage(
          image: AssetImage(initScreens),
          fit: BoxFit.cover
          ),
),
child: Stack(
 children: [
  Column(
        children:<Widget> [
          Container(
            padding: EdgeInsets.all(15),
            child: Text(initScreen.title),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(image: AssetImage(initScreen.image))
                ),
          ),
        ],
      )
      ] 
      )
      )
      );
    
  
}
 
}
 
 
 
 
 
 
 
 
 
 
 
 
 
  //   return Stack(children: [
  //     Column(children: [
  //       Flexible(
  //         child: Container(
  //           decoration: const BoxDecoration(
  //             image: DecorationImage(
  //               image: AssetImage(initScreens),
  //               fit: BoxFit.cover,
  //             ),
  //           ),
  //           child: Image.asset('assets/images/team_paris_santgerman.png',
  //           height: double.infinity,
  //           width: double.infinity,
  //           ),
  //         ),
  //       ),
  //     ]),
  //     Column(
  //       children: [
  //         Container(
  //           padding: EdgeInsets.all(15),
  //           child: Text(initScreen.title),
  //           decoration: BoxDecoration(
  //               borderRadius: BorderRadius.circular(15),
  //               image: DecorationImage(image: AssetImage(initScreen.image))),
  //         ),
  //       ],
  //     ),
  //   ]);
  // }