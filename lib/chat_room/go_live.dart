import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class Go_live extends StatefulWidget {
  const Go_live({Key? key}) : super(key: key);

  @override
  State<Go_live> createState() => _Go_liveState();
}

class _Go_liveState extends State<Go_live> {
  Color _favIconColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    var _mediaquery = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
            children: [
          Container(
            height: _mediaquery.height,
            width: _mediaquery.width,
            color: Color(0xff2f294a),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 80, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.circle,
                      color: Colors.red,
                      size: 15,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      "1.3K Live",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 560, right: 20),
                child: LikeButton(
                    size: 45,
                    bubblesSize: 0,
                    likeCount: 0,
                    countPostion: CountPostion.bottom,
                    circleSize: 0,
                    likeBuilder: (isTapped) {
                      return Icon(
                        Icons.favorite,
                        color: isTapped ? Colors.pinkAccent : Colors.white,
                        size: 45,
                      );
                    }),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, right: 20),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.chat,
                    color: _favIconColor,
                    size: 45,
                  ),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
