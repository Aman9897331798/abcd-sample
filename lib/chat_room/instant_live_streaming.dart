import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'go_live.dart';

class Instant_live extends StatefulWidget {
  const Instant_live({Key? key}) : super(key: key);

  @override
  State<Instant_live> createState() => _Instant_liveState();
}

class _Instant_liveState extends State<Instant_live> {

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
            "Chat Room",style: TextStyle(
            color: Colors.white,
              fontFamily: 'Kefa-Regular',
              fontSize:20,
            fontWeight: FontWeight.bold
          ),
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          )
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
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
                  Text(
                    "....",
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Instant Live Stearming",
                        style: TextStyle(
                            color: Colors.orange,
                            fontSize: 20,
                            fontFamily: 'Kefa-Regular',
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      Image(
                          image: AssetImage("assets/mask.png"),
                        height: 60,
                        width: 60,
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Container(
                              height: 35,
                              width: 170,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Colors.white)
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    height: 35,
                                    width: 50,
                                    child: Center(child: Text("Title",style: TextStyle(
                                      color: Colors.white,
                                    ),)),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Color.fromRGBO(34, 38, 61, 0.8),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        height:30,
                                        width: 110,
                                        child: TextField(
                                          style: TextStyle(
                                            color: Colors.white
                                          ),
                                          decoration: InputDecoration(
                                            hintText: "",
                                            fillColor: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Container(
                              height: 35,
                              width: 170,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(color: Colors.white)
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    height: 35,
                                    width: 50,
                                    child: Center(child: Text("# tag",style: TextStyle(
                                      color: Colors.white,
                                    ),)),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color:Color.fromRGBO(34, 38, 61, 0.8),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        height:30,
                                        width: 110,
                                        child: TextField(
                                          style: TextStyle(
                                              color: Colors.white
                                          ),
                                          decoration: InputDecoration(
                                            hintText: "",
                                            fillColor: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Container(
                              height: 35,
                              width: 120,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(color: Colors.white)
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    height: 35,
                                    width: 50,
                                    child: Center(child: Text("Rs",style: TextStyle(
                                      color: Colors.white,
                                    ),)),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Color.fromRGBO(34, 38, 61, 0.8),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Center(
                                        child: Container(
                                          height:30,
                                          width: 50,
                                          child: TextField(
                                            style: TextStyle(
                                                color: Colors.white
                                            ),
                                            decoration: InputDecoration(
                                              hintText: "Free",
                                              hintStyle: TextStyle(
                                                color: Colors.white,
                                              )
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 30,),
                  Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Container(
                              height: _mediaquery.size.height*0.06,
                              width: _mediaquery.size.width*0.78,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(color: Colors.white)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                child: TextField(
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Link",
                                    hintStyle: TextStyle(
                                      color: Colors.white,
                                    )
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 80,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: ElevatedButton(onPressed: (){
                          Get.to(Go_live());
                        },
                          child: Text(
                            "GO Live",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(primary:Colors.white),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            height: _mediaquery.size.height*0.85,
            width: _mediaquery.size.width*0.92,
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