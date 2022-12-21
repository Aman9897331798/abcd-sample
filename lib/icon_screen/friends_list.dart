import 'package:flutter/material.dart';

import '../bottomnav_pages/friends_model.dart';

class Friends_list extends StatefulWidget {
  const Friends_list({Key? key}) : super(key: key);

  @override
  State<Friends_list> createState() => _Friends_listState();
}

class _Friends_listState extends State<Friends_list> {

  @override
  Widget build(BuildContext context){
    var _mediaquery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor:Color.fromRGBO(79, 69, 124, 1),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        title: Center(
          child: Text(
            "SECRET FRIENDS",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontFamily: "Kefa-Regular"
            ),
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      body: Center(
        child: Container(
          height: _mediaquery.size.height*0.85,
          width: _mediaquery.size.width*0.94,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Color.fromRGBO(255, 175, 0, 0.8))
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 16,top: 12),
                  child: Text(
                    "Friends Request",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Kefa-Regular",
                      fontSize: 15,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  height: _mediaquery.size.height/3,
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      ListView.builder(
                          itemCount: friend_req.length,
                          itemBuilder: (BuildContext context, i)=>Column(
                            children: [
                              Card(
                                color:Color.fromRGBO(79, 69, 124, 1),
                                child: ListTile(
                                  leading: CircleAvatar(
                                    backgroundColor:Colors.white,
                                    backgroundImage: AssetImage(
                                      friend_req[i].avatar,
                                    ),
                                  ),
                                  title: Text(
                                    friend_req[i].name,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                  trailing: Expanded(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      mainAxisSize:MainAxisSize.max,
                                      children: [
                                        ElevatedButton(
                                            style: ButtonStyle(
                                                backgroundColor: MaterialStateProperty.all(
                                                    Color.fromRGBO(255, 175, 0, 1)
                                                ),
                                                shape: MaterialStateProperty.all(
                                                  RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(12),
                                                  ),
                                                )
                                            ),
                                            onPressed: (){},
                                            child:Text(
                                                "Accept"
                                            )
                                        ),
                                        ElevatedButton(
                                            style: ButtonStyle(
                                                backgroundColor: MaterialStateProperty.all(
                                                    Color.fromRGBO(60, 52, 94, 1)
                                                ),
                                                shape: MaterialStateProperty.all(
                                                  RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(12),
                                                  ),
                                                )
                                            ),
                                            onPressed: (){},
                                            child:Text(
                                              "Delete",
                                              style: TextStyle(
                                                fontSize: 12,
                                              ),
                                            )
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )
                      )
                    ],
                  ),
                ),
                const PreferredSize(
                  preferredSize: Size.fromHeight(50),
                  child: Divider(
                    indent: 20,
                    endIndent: 20,
                  thickness: 2,
                  color: Colors.black,
                ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                  child: const Text(
                    "Friends List",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Kefa-Regular",
                      fontSize: 15,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  height: _mediaquery.size.height/3,
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      ListView.builder(
                          itemCount: friend_req.length,
                          itemBuilder: (BuildContext context, i)=>Column(
                            children: [
                              Card(
                                color:Color.fromRGBO(79, 69, 124, 1),
                                child: ListTile(
                                  leading: CircleAvatar(
                                    backgroundColor:Colors.white,
                                    backgroundImage: AssetImage(
                                      friend_req[i].avatar,
                                    ),
                                  ),
                                  title: Text(
                                    friend_req[i].name,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                  subtitle: ElevatedButton(
                                      style: ButtonStyle(
                                          backgroundColor: MaterialStateProperty.all(
                                              Color.fromRGBO(60, 52, 94, 1)
                                          ),
                                          shape: MaterialStateProperty.all(
                                            RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(12),
                                            ),
                                          )
                                      ),
                                      onPressed: (){},
                                      child:Text(
                                          "Unfriend",
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                      )
                                  ),
                                  trailing: ElevatedButton(
                                    style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all(
                                          Color.fromRGBO(255, 175, 0, 1)
                                      ),
                                      shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(12),
                                        ),
                                      )
                                    ),
                                      onPressed: (){},
                                      child:Text(
                                          "Video call",
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                      )
                                  ),
                                ),
                              ),
                            ],
                          ),
                      ),
                    ],
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