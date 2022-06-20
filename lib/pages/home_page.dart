import 'package:flutter/material.dart';
import 'package:mousike/utils/ai_utils.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      body: Stack(children: [
        VxAnimatedBox().size(context.screenWidth, context.screenHeight)
        .withGradient(
          LinearGradient(colors: [
            AIColors.primaryColor1,
            AIColors.primaryColor2
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight
          )
        )
        .make(),
        AppBar(
          title: "Mousike".text.xl4.bold.white.make().shimmer(
            primaryColor: Vx.purple300,
            secondaryColor: Colors.white,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
        ).h(100).p16()
      ]),
      );
  }
}
