import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../components/initial_screen_item.dart';
import '../data/list_screen_data.dart';

class InitialScreen extends StatefulWidget {
  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  // const InitialScreen({Key? key}) : super(key: key);

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);
  }

  @override
  Widget build(BuildContext context) {
    final image = 'assets/images/initial_screen.png';
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
          children: LIST_INITIAL_SCREENS.map((cat) {
            return InitialScreenItem(initScreen: cat);
          }).toList(),
        ),
      ),
    );
  }
}
