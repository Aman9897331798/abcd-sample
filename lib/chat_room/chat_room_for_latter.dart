import 'package:flutter/material.dart';

class Chat_room_latter extends StatefulWidget {
  const Chat_room_latter({Key? key}) : super(key: key);

  @override
  State<Chat_room_latter> createState() => _Chat_room_latterState();
}

class _Chat_room_latterState extends State<Chat_room_latter> {

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
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            child: SingleChildScrollView(
              child: Stack(
                children: [
                  Column(
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
                    SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Create a Chat room for latter",
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
                              padding: const EdgeInsets.symmetric(horizontal: 5),
                              child: Container(
                                height: 35,
                                width: 150,
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
                                          width: 60,
                                          child: TextField(
                                            style: TextStyle(
                                                color: Colors.white
                                            ),
                                            decoration: InputDecoration(
                                              hintText: "",
                                              border: InputBorder.none,
                                              fillColor: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
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
                              padding: const EdgeInsets.symmetric(horizontal: 5),
                              child: Container(
                                height: 35,
                                width: 150,
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
                                        color: Color.fromRGBO(34, 38, 61, 0.8),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height:30,
                                          width: 60,
                                          child: TextField(
                                            style: TextStyle(
                                                color: Colors.white
                                            ),
                                            decoration: InputDecoration(
                                              hintText: "",
                                              border: InputBorder.none,
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
                              padding: const EdgeInsets.symmetric(horizontal: 5),
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
                                      width: 60,
                                      child: Center(child: Text("schedule",style: TextStyle(
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
                                            child: Center(
                                              child: TextField(
                                                style: TextStyle(
                                                    color: Colors.white
                                                ),
                                                decoration: InputDecoration(
                                                  border: InputBorder.none,
                                                    hintText: "Date\n24/08/2022",
                                                    hintStyle: TextStyle(
                                                      fontSize: 10,
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
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height:35,
                                  width: 35,
                                  child: Center(
                                    child: Text(
                                      "Time",
                                      style: TextStyle(
                                        fontSize: 5,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.white)
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 90,),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                height: 35,
                                width: 112,
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
                                          width: 60,
                                          child: TextField(
                                            style: TextStyle(
                                                color: Colors.white
                                            ),
                                            decoration: InputDecoration(
                                              labelText: "Free",
                                              border: InputBorder.none,
                                              labelStyle: TextStyle(
                                                color: Colors.white,
                                              )
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                        SizedBox(height: 80,),
                        Container(
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: ElevatedButton(
                            onPressed: (){
                              showDialog(
                                  context: context,
                                  builder: (context)=> Center(
                                    child: SingleChildScrollView(
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                       Container(
                                         height:_mediaquery.size.height*0.7,
                                         width: _mediaquery.size.width*0.9,
                                         decoration: BoxDecoration(
                                           borderRadius: BorderRadius.circular(20),
                                           border: Border.all(color: Colors.white),
                                           color:Color.fromRGBO(79, 69, 124, 1),
                                         ),
                                         child: Column(
                                           children: [
                                             AppBar(
                                               backgroundColor: Color.fromRGBO(34, 38, 61, 1),
                                               title: Center(
                                                child: Text(
                                                  "Chat Room Ticket",style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize:20,
                                                    fontWeight: FontWeight.bold
                                                ),
                                                ),
                                              ),
                                               shape: RoundedRectangleBorder(
                                                 borderRadius: BorderRadius.circular(20)
                                               ),
                                             ),
                                             Image(image: AssetImage("assets/mask.png"),
                                             height: 60,
                                             width: 60,
                                             ),
                                             SizedBox(height: 30,),
                                             Stack(
                                               children:[
                                                 Padding(
                                                   padding: const EdgeInsets.only(right: 10),
                                                   child: Column(
                                                   crossAxisAlignment: CrossAxisAlignment.end,
                                                   children: [
                                                     Row(
                                                       mainAxisAlignment: MainAxisAlignment.end,
                                                       children: [
                                                         Card(
                                                           color: Color.fromRGBO(79, 69, 124, 0.6),
                                                           child: Container(
                                                             height: _mediaquery.size.height*0.05,
                                                             width: _mediaquery.size.width*0.3,
                                                             decoration: BoxDecoration(
                                                                 borderRadius: BorderRadius.circular(5),
                                                                 border: Border.all(color: Colors.white)
                                                             ),
                                                             child: Row(
                                                               mainAxisAlignment: MainAxisAlignment.start,
                                                               children: [
                                                                 Container(
                                                                   height: _mediaquery.size.height*0.05,
                                                                   width: _mediaquery.size.width*0.12,
                                                                   decoration: BoxDecoration(
                                                                       borderRadius: BorderRadius.circular(5),
                                                                       border: Border.all(color: Colors.white),
                                                                     color: Color.fromRGBO(34, 38, 61, 0.8),

                                                                   ),
                                                                   child: Center(
                                                                     child: Text("Schedule",
                                                                     style: TextStyle(color: Colors.white,fontSize: 7),),
                                                                   ),
                                                                 )
                                                               ],
                                                             ),
                                                           ),
                                                         ),
                                                         Row(
                                                           mainAxisAlignment: MainAxisAlignment.end,
                                                           children: [
                                                             Card(
                                                               color:Color.fromRGBO(34, 38, 61, 0.8),
                                                               child: Container(
                                                                 height: _mediaquery.size.height*0.05,
                                                                 width: _mediaquery.size.width*0.12,
                                                                 child: Center(
                                                                   child: Text(
                                                                     "Time",
                                                                     style: TextStyle(
                                                                       fontSize: 6,
                                                                       color: Colors.white,
                                                                     ),
                                                                   ),
                                                                 ),
                                                                 decoration: BoxDecoration(
                                                                     borderRadius: BorderRadius.circular(5),
                                                                     border: Border.all(color: Colors.white),
                                                                 ),
                                                               ),
                                                             ),
                                                           ],
                                                         )
                                                       ],
                                                     ),
                                                     Align(
                                                       alignment: Alignment.centerRight,
                                                       child: Card(
                                                         color: Color.fromRGBO(79, 69, 124, 0.6),
                                                         child: Container(
                                                           height: _mediaquery.size.height*0.05,
                                                           width: _mediaquery.size.width*0.43,
                                                           decoration: BoxDecoration(
                                                               borderRadius: BorderRadius.circular(5),
                                                               border: Border.all(color: Colors.white)
                                                           ),
                                                           child: Row(
                                                             children: [
                                                               Container(
                                                                 height: _mediaquery.size.height*0.05,
                                                                 width: _mediaquery.size.width*0.2,
                                                                 decoration: BoxDecoration(
                                                                     borderRadius: BorderRadius.circular(5),
                                                                     border: Border.all(color: Colors.white),
                                                                   color: Color.fromRGBO(34, 38, 61, 0.8)
                                                                 ),
                                                                 child: Center(
                                                                   child: Text("Title",
                                                                     style: TextStyle(color: Colors.white,fontSize: 7),),
                                                                 ),
                                                               )
                                                             ],
                                                           ),
                                                         ),
                                                       ),
                                                     ),
                                                     SizedBox(height: 200,),
                                                     Center(
                                                       child: Container(
                                                         height: 50,
                                                         width: 150,
                                                         decoration: BoxDecoration(
                                                           borderRadius: BorderRadius.circular(10),
                                                           color: Colors.white,
                                                         ),
                                                         child: ElevatedButton(
                                                           onPressed: (){},
                                                           child: Text(
                                                             "Done",
                                                             style: TextStyle(
                                                               color: Colors.black,
                                                               fontSize: 20,
                                                               fontWeight: FontWeight.bold,
                                                             ),
                                                           ),
                                                           style: ElevatedButton.styleFrom(primary:Colors.white),
                                                         ),
                                                       ),
                                                     )
                                                   ],
                                               ),
                                                 ),
                                                 Padding(
                                                   padding: const EdgeInsets.only(left: 10),
                                                   child: Row(
                                                     mainAxisAlignment: MainAxisAlignment.start,
                                                     crossAxisAlignment: CrossAxisAlignment.center,
                                                     children: [
                                                       Row(
                                                         children: [
                                                           Container(
                                                             height:_mediaquery.size.height*0.2,
                                                             width:_mediaquery.size.width*0.35,
                                                             decoration: BoxDecoration(
                                                                 borderRadius: BorderRadius.circular(10),
                                                                 border: Border.all(color:Colors.white,)
                                                             ),
                                                             child: Column(
                                                               mainAxisAlignment: MainAxisAlignment.end,
                                                               children: [
                                                                 Card(
                                                                   color:Color.fromRGBO(34, 38, 61, 0.2),
                                                                   child: Container(
                                                                     height:_mediaquery.size.height*0.04,
                                                                     width:_mediaquery.size.width*1,
                                                                     decoration: BoxDecoration(
                                                                       borderRadius: BorderRadius.circular(10),
                                                                       color: Color.fromRGBO(34, 38, 61, 0.8),
                                                                     ),
                                                                     child:Center(child: Text("Ads/Poster/reel",
                                                                       style: TextStyle(
                                                                         fontSize: 10,
                                                                         color: Colors.white,
                                                                       ),)) ,
                                                                   ),
                                                                 ),
                                                               ],
                                                             ),
                                                           ),
                                                         ],
                                                       ),
                                                     ],
                                                   ),
                                                 )
                                               ]
                                             ),
                                           ],
                                         ),
                                       ),
                                        ],
                                      ),
                                    ),
                                  )
                              );
                            },
                            child: Text(
                              "Create",
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
                ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 210,),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Row(
                            children: [
                              Container(
                                height:_mediaquery.size.height*0.2,
                                width: _mediaquery.size.width*0.4,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color:Colors.white,)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      height:_mediaquery.size.height*0.04,
                                      width: _mediaquery.size.width*0.5,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Color.fromRGBO(34, 38, 61, 0.8),
                                      ),
                                      child:Center(child: Text("Ads/Poster/reel",
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.white,
                                      ),)) ,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ]
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