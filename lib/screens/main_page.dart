import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'chats.dart';

class MainPage extends StatelessWidget {

  Container myChatSummary(String imagePath, String userName, String recentText, String timeOfMessage){
    
    return Container(
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(width: 2.0, color: Colors.grey[200])
              ),
            ),
            child: ListTile(
                leading: CircleAvatar(
                backgroundImage: AssetImage(imagePath),
                ),
              title: Text(userName),
              subtitle: Text(recentText),
              trailing: Text(timeOfMessage),
                )
              );
    
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
       appBar: AppBar(
         title: Text('HansApp'),
         backgroundColor: Colors.green,
         actions: <Widget>[
           IconButton(
             icon: Icon(Icons.search),
             onPressed: (){},
           ),
           IconButton(
             icon: Icon(Icons.more_vert),
             onPressed: (){},
           ),
         ],
         bottom: TabBar(
           indicatorColor: Colors.white,
           tabs: <Widget>[
             Tab(text: "CHATS",),
             Tab(text: "STATUS",),
             Tab(text: "CALLS",),
           ],
         ),
       ),
       body: TabBarView(
         children: <Widget>[
           ListView(
             scrollDirection: Axis.vertical,
             children: <Widget>[
               myChatSummary('assets/images/image1.jpg', 'Josiah Sarfo', 'Late for Work', '12:24'),
               myChatSummary('assets/images/image2.jpg', 'Hannah Duah', 'Going to the Mall', '16:45'),
               myChatSummary('assets/images/image0.jpg', 'Dennis Acheampong', 'School was fun!', '18:01'),
               myChatSummary('assets/images/image4.jpg', 'Joyce Agyekum', 'Obrempong just graduated! Huraay!!!', '13:45'),
               myChatSummary('assets/images/image5.jpg', 'Faustina Agyekum', 'I am so siced for this meeting', '12:24'),
               myChatSummary('assets/images/image0.jpg', 'Joy Dough', 'Pretty tired', '13:18'),
               myChatSummary('assets/images/image4.jpg', 'Professor Jogun', 'Your assignment is due.', '12:24'),
               myChatSummary('assets/images/image2.jpg', 'Josiah Sarfo', 'Late for Work', '12:24'),
               myChatSummary('assets/images/image1.jpg', 'Josiah Sarfo', 'Late for Work', '12:24'),
             ],
           ),
           ListView(
             scrollDirection: Axis.vertical,
             children: <Widget>[
               Card(
                 child: ListTile(
                   leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/image1.jpg'),
                    ),
                  title: Text('Hannah Duah'),
                  subtitle: Text('I love you'),
                  trailing: Text("14:24"),
                 ),
                ),
             ],
           ),
           ListView(
             scrollDirection: Axis.vertical,
             children: <Widget>[
               Card(
                 child: ListTile(
                   leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/image1.jpg'),
                    ),
                  title: Text('Hannah Duah'),
                  subtitle: Text('I love you'),
                  trailing: Text("14:24"),
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