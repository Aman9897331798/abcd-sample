import 'package:flutter/material.dart';

class Paid extends StatefulWidget {
  const Paid ({Key? key}) : super(key: key);

  @override
  State<Paid> createState() => _PaidState();
}

class _PaidState extends State<Paid> {
  @override
  Widget build(BuildContext context){
    var _mediaquery= MediaQuery.of(context);
    return Scaffold(
      backgroundColor:Color.fromRGBO(79, 69, 124, 0.6),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromRGBO(34, 38, 61, 0.8),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Chat Room Live",
              style: TextStyle(
                color: Colors.white,
                fontSize:20,
                fontWeight: FontWeight.bold,
                fontFamily: 'Kefa-Regular',
            ),
            ),
            SizedBox(width: 20,),
            Image(
              image: AssetImage("assets/mask.png"),
              height: 50,
              width: 50,
            )
          ],
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            )
        ),
      ),
      body: Column(
        children: [
          Container(
            height: _mediaquery.size.height*0.65,
            width: _mediaquery.size.width*0.9,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color.fromRGBO(34, 38, 61, 0.8),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    "Live video",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Kefa-Regular',
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    "2 Minuts Free Demo",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              SizedBox(height: 10,),
              Center(
                child: Text(
                  "Topic: How to do\n\n Tikets Price: 1rs",
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 20,),
          Container(
            height: 50,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: ElevatedButton(onPressed: (){
              showDialog(context: context,
                  builder: (context)=> Center(
                    child: Container(
                      height: _mediaquery.size.height*0.3,
                      width: _mediaquery.size.width*0.9,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(15),
                        color: Color.fromRGBO(79, 69, 124, 0.6),
                      ),
                      child: Card(
                        color: Color.fromRGBO(79, 69, 124, 0.6),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Ticket : 1 rs",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 15,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ElevatedButton(onPressed: (){},
                                    child: Text("Paytm",
                                      style:TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ) ,
                                    ),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                      Colors.white,
                                    ),
                                    shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10)
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 8,),
                                Row(
                                  children: [
                                    ElevatedButton(onPressed: (){},
                                      child: Text("Google pay",
                                        style:TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ) ,
                                      ),
                                      style: ButtonStyle(
                                        backgroundColor: MaterialStateProperty.all(
                                          Colors.white,
                                        ),
                                        shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10)
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 8,),
                                Row(
                                  children: [
                                    ElevatedButton(onPressed: (){},
                                      child: Text("PhonePe",
                                        style:TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ) ,
                                      ),
                                      style: ButtonStyle(
                                        backgroundColor: MaterialStateProperty.all(
                                          Colors.white,
                                        ),
                                        shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10)
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(height: 10,),
                            Column(
                              children: [
                                ElevatedButton(onPressed: (){},
                                  child: Text("UPI",
                                    style:TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ) ,
                                  ),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                      Colors.white,
                                    ),
                                    shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10)
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
                  )
              );
            },
              child: Text(
                "Join",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              style: ElevatedButton.styleFrom(primary:Colors.white),
            ),
          )
        ],
      ),
    );
  }
}