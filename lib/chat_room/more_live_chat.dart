import 'package:flutter/material.dart';

class More_live_chat extends StatefulWidget {
  const More_live_chat({Key? key}) : super(key: key);

  @override
  State<More_live_chat> createState() => _More_live_chatState();
}

class _More_live_chatState extends State<More_live_chat> {

  @override
  Widget build(BuildContext context){
    var _query = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Color.fromRGBO(79, 69, 124, 0.6),
      body:Column(
        children: [
          SizedBox(height: 40,),
          Center(
            child: Container(
              width: _query.size.width*0.8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color:Colors.orange,),
                color: Color.fromRGBO(34, 38, 61, 0.8),
              ),
              child: TextField(
                cursorColor: Colors.black,
                style: TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 15),
                    border: InputBorder.none,
                    filled: true,
                    hintText: "Search hashtags,Topics",
                    hintStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    suffixIcon:Icon(Icons.search,color: Colors.white,) ,
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Column(
            children: [
              Container(
                child: Row(
                  children: [
                    Icon(
                      Icons.square_rounded,
                      color: Colors.orange,
                    ),
                    SizedBox(width: 5,),
                    Text(
                      "Live Chat Room",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Kefa-Regular',
                      ),
                    ),
                  ],
                ),
                height: _query.size.height*0.05,
                width: _query.size.width*0.96,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Color.fromRGBO(34, 38, 61, 0.8),
                ),
              )
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 10,left: 10,right: 10),
              child: GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                shrinkWrap: true,
                children: List.generate(30, (index) {
                  return Container(
                    child: Align(
                      alignment: Alignment.topRight,
                        child: Icon(Icons.circle,color: Colors.green,size: 15,)),
                    height: _query.size.height*0.4,
                    width: _query.size.width*0.3,
                    decoration: BoxDecoration(
                      image: DecorationImage(


                        image: AssetImage("assets/cute.jpg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                  );
                },),
              ),
            ),
          ),
        ],
      ),

    );
  }
}