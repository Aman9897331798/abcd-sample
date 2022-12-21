import 'package:flutter/material.dart';
import 'package:project_test2/home.dart';

import 'bottomnav_pages/info_models.dart';
import 'bottomnav_pages/tickets.dart';
import 'chat_room/info_screen.dart';

class Bottom_nav extends StatefulWidget {
  const Bottom_nav({Key? key}) : super(key: key);

  @override
  State<Bottom_nav> createState() => _Bottom_navState();
}

class _Bottom_navState extends State<Bottom_nav> {
  @override
  int _selectedIndex = 0;
  List<Widget>widgetList = const [
    HomePage(),
    Info_pay(),
  ];
  Widget build(BuildContext context){
    var _mediaquery= MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.purple.shade900,
      body: Center(
        child: widgetList[_selectedIndex],
      ),
      bottomNavigationBar:
      ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        child: BottomNavigationBar(
          backgroundColor:Color.fromRGBO(34, 38, 61, 1),
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: (i) => setState(() => _selectedIndex = i),
          items: [
            BottomNavigationBarItem(
              icon:Icon(Icons.home_outlined,size: 30,),
              activeIcon: Icon(Icons.home,color: Colors.white,size: 30,),
              label: "",
            ),
            BottomNavigationBarItem(
              icon:Icon(Icons.lightbulb_circle_outlined,size: 30,),
              activeIcon: Icon(Icons.lightbulb_circle,color: Colors.white,size: 30,),
              label: "",
            ),
            BottomNavigationBarItem(
              icon:TextButton(
                style: ButtonStyle(
                  backgroundColor:MaterialStateProperty.all(Colors.transparent),
                ),
                onPressed: (){
                  showModalBottomSheet(context: context,
                      isScrollControlled: true,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                      ),
                      builder: (context){
                    return  Container(
                      height: _mediaquery.size.height*0.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color:Colors.white),
                        color: Color.fromRGBO(79, 69, 124, 1),
                      ),
                      child: Stack(
                        alignment: Alignment.centerLeft,
                        children: [
                          ListView.builder(
                              itemCount:info_data.length,
                              itemBuilder: (BuildContext context,  i)=> Column(
                                children:[
                                Card(
                                  color:Color.fromRGBO(79, 69, 124, 1),
                                  child: ListTile(
                                    leading: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      backgroundImage: AssetImage(
                                        info_data[i].avatar
                                      ),
                                    ),
                                    trailing: IconButton(
                                      onPressed: ()=> Navigator.pop(context),
                                      icon: Icon(Icons.cancel,color: Colors.white,),
                                      color: Colors.transparent,
                                    ),
                                    title: Text(
                                      info_data[i].name,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "Kefa-Regular"
                                      ),
                                    ),
                                  ),
                                ),
                                ]
                              ),
                          ),
                          TextButton(onPressed: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Tickets()));
                          },
                            child: Text('Show Tickets',
                              style: TextStyle(
                                color: Colors.white
                              ),),)
                        ],
                      ),
                    );
                      }
                  );
                },
                 child: Icon(Icons.menu_outlined,color: Colors.black,size: 25,),
              ),
              label: "",
            ),
          ],
        ),
      ),
    );
  }
}