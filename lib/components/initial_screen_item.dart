// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../models/initial_screen_category.dart';

class InitialScreenItem extends StatelessWidget {
  final InitialScreenCategory? initScreen;
  // const InitialScreenItem(this.initScreen);

  InitialScreenItem({
    Key? key,
     this.initScreen,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    const initScreens = 'assets/images/initial_screen.png';
    return Stack(
      children: [
        Container(
        height: height,
        width: width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(initScreens),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage(
                      initScreen!.image,
                    ),
                  )),
              child: Text(initScreen!.title),
            ),
          ],
        ),
      ),
      ]
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