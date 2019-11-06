import 'dart:math';

import 'package:flutter/material.dart';

class Chats  extends StatelessWidget {

Card receivedMessage(String messageReceived){
  return Card(
          color: Colors.brown[50],
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            child: Text(messageReceived, style: TextStyle(fontSize: 15.0, color: Colors.black, fontWeight: FontWeight.w400),),
          ),
  );
}

Card sentMessage(String messageSent){
  return Card(
          color: Colors.teal,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            child: Text(messageSent, style: TextStyle(fontSize: 15.0, color: Colors.white, fontWeight: FontWeight.w400),),
          ),
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: Container(
           transform: Matrix4.translationValues(-30.0, 0, 0), //allows us to implement a negative margin to row
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: <Widget>[
               CircleAvatar(
                backgroundImage: AssetImage('assets/images/image1.jpg'),
              ),
                Text('Josiah Sarfo', style: TextStyle(fontSize: 20.0),),
              ],
              ),
              ),
        actions: <Widget>[
              IconButton(
                icon: Icon(Icons.add_call),
                onPressed: (){},
                ),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: (){},
              ),
        ],
        // bottom: BottomNavigationBar(
        //   child: Container(
        //   // height: 40.0,
        //   child: Row(
        //   children: <Widget>[
        //     IconButton(
        //       icon: Icon(Icons.face),
        //       onPressed: (){},
        //     ),
        //     TextField(
        //       showCursor: true,
        //       cursorColor: Colors.grey,
        //       keyboardType: TextInputType.text,
        //     ),
        //   ],
        // ),
        // ), 
        // ),
       ),
      body: Container(
          child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/image1.jpg'),
                    fit: BoxFit.cover,
                  )
                ),
              ),
              ListView(
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  receivedMessage("I am so sorry I was late for the dinner. Want to make up to me later?. love you"),
                  receivedMessage("I am so sorry I was late for the dinner. Want to make up to me later?. love you"),
                  sentMessage("Do not worry, I understand you are busy. Love you too"),
                  receivedMessage("I am so sorry I was late for the dinner. Want to make up to me later?. love you"),
                  receivedMessage("I am so sorry I was late for the dinner. Want to make up to me later?. love you"),
                  sentMessage("I am so sorry I was late for the dinner. Want to make up to me later?. love you"),
                ],
              ),

              // Positioned(
              //   top: 20.0,
              //   child: Container(
              //     height: 5.0,
              //     width: 20.0,
              //     child: Row(
              //       children: <Widget>[
              //         IconButton(
              //         icon: Icon(Icons.face),
              //         onPressed:(){} ,
              //         ),
              //         // TextField(
              //         //   textAlign: TextAlign.left,
              //         //   showCursor: true,
              //         //   // expands: true,
                        
              //         // )
              //       ], 
              //     ),
              //   ),
              // ),
            ],
           
          ),
      ),

           
    );
  }
}