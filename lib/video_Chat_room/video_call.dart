import 'package:flutter/material.dart';

import 'package:project_test2/home.dart';

class Video_call extends StatefulWidget {
  const Video_call({Key? key}) : super(key: key);

  @override
  State<Video_call> createState() => _Video_callState();
}

class _Video_callState extends State<Video_call> {
  @override
  Widget build(BuildContext context){
    var _mediaquery=MediaQuery.of(context);
    return Scaffold(
        backgroundColor:Color.fromRGBO(79, 69, 124, 0.6),
      body: Stack(
        children:<Widget>[
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.only(bottom: 80),
              height: _mediaquery.size.height*0.7,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                    ),
                    child: InkWell(
                        onTap: (){},
                        child: Icon(Icons.mic_off,color: Colors.black,size: 40,)),
                  ),
                  SizedBox(width: 30,),
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red,

                    ),
                    child: InkWell(
                        onTap: (){
                          Navigator.pop(context,
                          MaterialPageRoute(builder: (context)=>HomePage()),
                          );
                        },
                        child: Icon(Icons.call_end,color: Colors.white,size: 40,)),
                  ),
                  SizedBox(width: 30,),
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: InkWell(
                        onTap: (){},
                        child: Icon(Icons.videocam_off,color: Colors.black,size: 40,)),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 500,right: 15),
            alignment: Alignment.centerRight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white
                  ),
                  child: InkWell(
                    onTap: (){},
                    child: Icon(Icons.flip_camera_ios_outlined,color: Colors.black,size: 30,),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text("Camera flip",style: TextStyle(color:Colors.white ),),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white
                  ),
                  child: InkWell(
                    onTap: (){},
                    child: Icon(Icons.add_reaction_outlined,color: Colors.black,size: 30,),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text("Add person",style: TextStyle(color:Colors.white ),),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color:Colors.white,
                  ),
                  child: InkWell(
                    onTap: (){},
                    child: Icon(Icons.search,color: Colors.black,size: 30,),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text("Search person",style: TextStyle(color:Colors.white ),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}