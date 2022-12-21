import 'dart:async';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'video_call.dart';


class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  VideoState createState() => VideoState();
}

class VideoState extends State<Splash> with SingleTickerProviderStateMixin {
  var _visible = true;

  late AnimationController animationController;
  late Animation<double> animation;

  startTime() async {
    var _duration = const Duration(seconds: 2);
    return Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Get.to(() => const Video_call());

  }

  @override
  void initState() {

    super.initState();

    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    animation =
        CurvedAnimation(parent: animationController, curve: Curves.easeOut);

    animation.addListener(() => setState(() {}));
    animationController.forward();

    setState(() {
      _visible = !_visible;
    });
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    var _mediaquery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor:Color.fromRGBO(79, 69, 124, 0.6),
      body: SafeArea(
        child: Center(
          child: Container(
            padding: EdgeInsets.only(bottom: 10),
            width: _mediaquery.size.width*0.92,
            height: _mediaquery.size.height*0.91,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color:Color.fromRGBO(255, 175, 0, 0.8)),
                color: Color.fromRGBO(79, 69, 124, 0.6)
            ),
            child: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset(
              'assets/mask.png',
                    height: 90,
                    width: 90,
                ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 110),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Center(
                          child: Text(
                              "Video Call",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Kefa-Regular",
                              fontSize: 30,
                            ),
                          ),
                        ),
                        Text("Connecting With Your",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Kefa-Regular",
                            fontSize: 30,),
                        ),
                        Text("Secret Friends",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Kefa-Regular",
                            fontSize: 30,),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.circle,
                              color: Color.fromRGBO(255, 175, 0, 0.9),
                              size: 15,
                            ),
                            SizedBox(width: 5,),
                            Icon(Icons.circle,
                              color: Color.fromRGBO(255, 175, 0, 0.9),
                              size: 15,
                            ),
                            SizedBox(width: 5,),
                            Icon(Icons.circle,
                              color: Color.fromRGBO(255, 175, 0, 0.9),
                              size: 15,
                            ),
                            SizedBox(width: 5,),
                            Icon(Icons.circle,
                              color: Color.fromRGBO(255, 175, 0, 0.9),
                              size: 15,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 200),
                  child: Center(
                    child: Container(
                     height: _mediaquery.size.height*0.2,
                      width: _mediaquery.size.width*0.85,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(34, 38, 61, 2),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red
                        ),
                        child: InkWell(
                          onTap: ()=> Navigator.pop(context),
                            child: Icon(Icons.call_end,color: Colors.white,size: 40,))),
                    ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}