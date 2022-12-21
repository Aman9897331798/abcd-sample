import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'chat_room/info_screen.dart';
import 'icon_screen/friends_list.dart';
import 'video_Chat_room/splash_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context){
    final _mediaquery = MediaQuery.of( context);
    return Scaffold(
      backgroundColor:Color.fromRGBO(79, 69, 124, 1),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 40,bottom: 10),
          child: Column(
            children: [
              Center(
                child: Container(
                  child: Column(
                    children: [
                      SizedBox(height: 20,),
                      Text(
                          "SECRET FRIENDS",
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontFamily: 'Kefa-Regular',
                            fontWeight: FontWeight.bold
                          )

                      ),
                      SizedBox(height: 10,),
                      Image(
                        image: AssetImage("assets/mask.png"),
                        height: 100,
                      ),
                      SizedBox(height: 20,),
                      ElevatedButton(
                        onPressed: (){
                          Get.to(Splash());
                        },
                          child: Column(
                            children: [
                              Text(
                                "Video chat",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Kefa-Regular',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                "One to One",
                                style: TextStyle(
                                  color: Colors.black
                                ),
                              ),
                            ],
                          ),
                        style: ButtonStyle(
                          fixedSize: MaterialStateProperty.all(Size(210, 50)),
                          backgroundColor: MaterialStateProperty.all(Colors.white),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                            )
                          )
                        ),
                      ),
                      SizedBox(height: 20,),
                      ElevatedButton(
                        onPressed: (){
                          Get.to(Info_pay());
                        },
                        child: Column(
                          children: [
                            Text(
                              "Chat Room",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Kefa-Regular",
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              "Group Chat",
                              style: TextStyle(
                                  color: Colors.black
                              ),
                            ),
                          ],
                        ),
                        style: ButtonStyle(
                            fixedSize: MaterialStateProperty.all(Size(210, 50)),
                            backgroundColor: MaterialStateProperty.all(Colors.white),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                )
                            )
                        ),
                      ),
                      SizedBox(height: 20,),
                      InkWell(
                        onTap: (){
                          Get.to(Friends_list());
                        },
                        child: Container(
                          padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white
                            ),
                            child: Icon(Icons.account_circle_outlined,color:Color.fromRGBO(255, 175, 0, 0.8),size: 50,))
                      ),
                      SizedBox(height: 20,),
                      Container(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              SizedBox(height: 20,),
                              Text(
                                "Video Chat With Starangers",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontFamily: "Kefa-Regular",
                                ),
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.star, color: Colors.yellow),
                                      SizedBox(width: 5,),
                                      Text(
                                        "No identity",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.star,color: Colors.yellow,),
                                      SizedBox(width: 5,),
                                      Text(
                                        "No Name",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.star,color: Colors.yellow),
                                      SizedBox(width: 5,),
                                      Text(
                                        "No Number",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(width: 10,)
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 20,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.star,color: Colors.yellow),
                                      SizedBox(width: 5,),
                                      Text(
                                        "No Name",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.star,color: Colors.yellow),
                                      SizedBox(width: 5,),
                                      Text(
                                        "No History",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.star,color: Colors.yellow),
                                      SizedBox(width: 5,),
                                      Text(
                                        "No Number",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(width: 10,)
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        width: _mediaquery.size.width*0.85,
                        height: _mediaquery.size.height*0.2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromRGBO(34, 38, 61, 0.4),
                        ),
                      ),
                      SizedBox(height: 50,)
                    ],
                  ),
                  height: _mediaquery.size.height*0.85,
                  width: _mediaquery.size.width*0.95,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color:Color.fromRGBO(255, 175, 0, 0.8)),
                    color: Color.fromRGBO(79, 69, 124, 1)
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}