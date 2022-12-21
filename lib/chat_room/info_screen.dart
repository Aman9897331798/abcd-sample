import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../comman_widget/chatroom_box_contanier.dart';
import '../comman_widget/chatroom_box_textbutton.dart';
import 'create_your_chat_room.dart';
import 'more_live_chat.dart';
import 'more_tranding_live.dart';
import 'more_upcoming_show.dart';

class Info_pay extends StatefulWidget {
  const Info_pay({Key? key}) : super(key: key);

  @override
  State<Info_pay> createState() => _Info_payState();
}

class _Info_payState extends State<Info_pay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(79, 69, 124, 0.6),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Color.fromRGBO(34, 38, 61, 0.4),
          title: Center(
            child: Text(
              "Ads",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(10),
          )),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.circle,
                  color: Color.fromRGBO(255, 175, 0, 0.9),
                  size: 10,
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.circle,
                  color: Color.fromRGBO(255, 175, 0, 0.9),
                  size: 10,
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.circle,
                  color: Color.fromRGBO(255, 175, 0, 0.9),
                  size: 10,
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.circle,
                  color: Color.fromRGBO(255, 175, 0, 0.9),
                  size: 10,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                height: 40,
                width: 260,
                child: Center(
                  child: TextButton(
                    onPressed: () {
                      Get.to(Create_chat_room());
                    },
                    child: Text(
                      "Create Your Chat Room",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Kefa-Regular',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      Icon(
                        Icons.square_rounded,
                        color: Colors.orange,
                        size: 24,
                      ),
                      Text(
                        "Live Chat Room",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Kefa-Regular',
                            fontSize: 20),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 15),
                      height: 80,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(34, 38, 61, 0.8),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const BoxContanier(
                              colors: Colors.black, contanierName: 'Free'),
                          const BoxContanier(
                              colors: Colors.black, contanierName: 'Paid'),
                          const BoxContanier(
                              colors: Colors.transparent, contanierName: ''),
                          Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: GestureDetector(
                              child: MoreTextWidget(),
                              onTap: () {
                                Get.to(More_live_chat());
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Icon(
                    Icons.square_rounded,
                    color: Colors.orange,
                    size: 24,
                  ),
                  Text(
                    "Trending Live",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 15),
                  height: 80,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(34, 38, 61, 0.8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BoxContanier(
                          colors: Colors.transparent, contanierName: ''),
                      BoxContanier(
                          colors: Colors.transparent, contanierName: ''),
                      BoxContanier(
                          colors: Colors.transparent, contanierName: ''),
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: GestureDetector(
                          child: MoreTextWidget(),
                          onTap: () {
                            Get.to(More_tranding());
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Icon(
                    Icons.square_rounded,
                    color: Colors.orange,
                    size: 24,
                  ),
                  Text(
                    "Upcoming Show",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 15),
                  height: 80,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(34, 38, 61, 0.8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BoxContanier(
                          colors: Colors.transparent, contanierName: ''),
                      BoxContanier(
                          colors: Colors.transparent, contanierName: ''),
                      BoxContanier(
                          colors: Colors.transparent, contanierName: ''),
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: GestureDetector(child: MoreTextWidget(),
                          onTap: (){
                            Get.to(More_upcomming());
                          },

                        ),


                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
