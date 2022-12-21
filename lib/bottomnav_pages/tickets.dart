import 'package:flutter/material.dart';

class Tickets extends StatefulWidget {
  const Tickets({Key? key}) : super(key: key);

  @override
  State<Tickets> createState() => _TicketsState();
}

class _TicketsState extends State<Tickets> {
  @override
  Widget build(BuildContext context){
    var _mediaquery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor:Color.fromRGBO(79, 69, 124, 1),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Center(
          child: Text(
            "Show Tickets",
            style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: "Kefa-Regular",
                fontWeight: FontWeight.bold
            ),
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                height: _mediaquery.size.height/2.4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.square_rounded,color: Color.fromRGBO(255, 175, 0, 0.8),size: 24,),
                        Row(
                          children: [
                            Text(
                              "My show",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Kefa-Regular",
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
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
                              height: _mediaquery.size.height*0.4,
                              width: _mediaquery.size.width*0.3,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/cute.jpg"),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(6),
                                color: Colors.white,
                              ),
                            );
                          },),
                        ),
                      ),
                    ),
                  ]
                ),
              ),
              PreferredSize(
                child: Divider(
                color: Colors.transparent,
              ),
                preferredSize: Size.fromHeight(50),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                child: Row(
                  children: [
                    Icon(Icons.square_rounded,color: Color.fromRGBO(255, 175, 0, 0.8),size: 24,),
                    Text(
                      "Tickets",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Kefa-Regular",
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
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
                        height: _mediaquery.size.height*0.4,
                        width: _mediaquery.size.width*0.3,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/cute.jpg"),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(6),
                          color: Colors.white,
                        ),
                      );
                    },),
                  ),
                ),
              ),
            ],
          ),
          height: _mediaquery.size.height*0.85,
          width: _mediaquery.size.width*0.94,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Color.fromRGBO(255, 175, 0, 0.8))
          ),
        ),
      ),
    );
  }
}