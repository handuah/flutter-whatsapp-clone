import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MainPage extends StatelessWidget {
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
       body: ListView(
         scrollDirection: Axis.vertical,
         children: <Widget>[
           Container(
            //  padding: EdgeInsets.all(2.0),
           // child: 
          //Row(
             
          //    crossAxisAlignment: CrossAxisAlignment.start,
          //    mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //    children: <Widget>[
          //      CircleAvatar(
          //        backgroundImage: AssetImage('assets/images/image1.jpg'),
          //      ),
          //      Column(
          //        children: <Widget>[
          //          Text('Hannah'),
          //          Text('I love you')
          //        ],
          //      ),
          //      Text('3:45pm')
          //    ],
          //  )

          child: Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/image1.jpg'),
                ),
              title: Text('Hannah Duah'),
              subtitle: Text('I love you'),
              trailing: Text("14:24"),
            ),
          ),
           ),
         ],
         ),
    ),
    );
  }
}