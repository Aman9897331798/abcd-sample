import 'package:flutter/material.dart';

class MoreTextWidget extends StatelessWidget {
 

  const MoreTextWidget({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.more_horiz_rounded,size: 30,color: Colors.black,),
          Text('More',style: TextStyle(
            fontSize: 10,
            color: Colors.grey,
            fontWeight: FontWeight.bold,
          ),)
        ],
      ),
    );
  }
}
