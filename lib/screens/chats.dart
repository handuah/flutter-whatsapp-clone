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

Widget messageBar(){
  return Container(
    height: 60.0,
    width: 350.0,
    padding: EdgeInsets.only(left: 5.0, right: 5.0),
    margin: EdgeInsets.symmetric(horizontal: 5.0),
    // color: Colors.white,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(50.0),
      color: Colors.yellow[100],
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 10.0, right: 5.0),
          width: 270.0,
          // child:  SingleChildScrollView(
            child: TextField(
                decoration: InputDecoration(
                hintText: 'Type your message',
                icon: Icon(Icons.face, color: Colors.grey),
            ),
            ),
          // ),

        ),
        Container(
          padding: EdgeInsets.only(right: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Icon(Icons.attach_file, color: Colors.grey,),
              Icon(Icons.add_a_photo, color: Colors.grey,),
            ],
          ),
        ),
      ],
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
                  sentMessage("Do not worry, I understand you are busy. Love you too"),
                  receivedMessage("I am so sorry I was late for the dinner. Want to make up to me later?. love you"),
                  receivedMessage("I am so sorry I was late for the dinner. Want to make up to me later?. love you"),
                  sentMessage("I am so sorry I was late for the dinner. Want to make up to me later?. love you"),
                  // messageBar(),
                ],
                
              ),
              Positioned(
                top: 450.0,
                child: messageBar(),
              )
            ],
          
          ),
      ),

           
    );
  }
}

