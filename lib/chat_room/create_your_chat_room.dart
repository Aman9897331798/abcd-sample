import 'package:flutter/material.dart';
import 'package:get/get.dart';


import 'chat_room_for_latter.dart';
import 'instant_live_streaming.dart';

class Create_chat_room extends StatefulWidget {
  const Create_chat_room({Key? key}) : super(key: key);

  @override
  State<Create_chat_room> createState() => _Create_chat_roomState();
}

class _Create_chat_roomState extends State<Create_chat_room> {

  @override
  Widget build(BuildContext context){
    var _mediaquery = MediaQuery.of(context);
  return Scaffold(
    backgroundColor:Color.fromRGBO(79, 69, 124, 0.6),
    appBar: AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Color.fromRGBO(34, 38, 61, 0.8),
      title: Center(
        child: Text(
          "Chat Room",
          style: TextStyle(
            color:Colors.white,
            fontSize: 30,
              fontFamily: 'Kefa-Regular',
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    ),
    body: SafeArea(
      child: Center(
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  child: Center(
                    child: Text(
                      "Ads Banners",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  height: _mediaquery.size.height*0.15,
                  width: _mediaquery.size.width*1.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromRGBO(34, 38, 61, 0.8),
                  ),
                ),
                SizedBox(height: 90,),
                ElevatedButton(
                    onPressed: (){
                      Get.to(Instant_live());
                    },
                    child: Text(
                      "Instant live streaming",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Kefa-Regular',
                        fontSize: 20,
                      ),
                    ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Color.fromRGBO(34, 38, 61, 0.8),),
                  ),
                ),
                SizedBox(height: 60,),
                ElevatedButton(
                  onPressed: (){
                    Get.to(Chat_room_latter());
                  },
                  child: Text(
                    "Create a Chat room for later",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Kefa-Regular',
                      fontSize: 20,
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Color.fromRGBO(34, 38, 61, 0.8),),
                  ),
                ),
                SizedBox(height: 120,),
                Container(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Image(
                      image: AssetImage("assets/mask.png"),
                      height: 80,
                      width: 80,
                    ),
                  ),
                  height: _mediaquery.size.height*0.1,
                  width: _mediaquery.size.width*0.87,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color:Color.fromRGBO(34, 38, 61, 0.8),
                  ),
                ),
                SizedBox(height: 20,)
              ],
            ),
          ),
          height: _mediaquery.size.height*0.85,
          width: _mediaquery.size.width*0.94,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Color.fromRGBO(255, 175, 0, 0.8))
          ),
        ),
      ),
    ),
  );
  }
}