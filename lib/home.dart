import 'package:flutter/material.dart';
import 'chat.dart';
import 'messageLists.dart';
import 'widgets/contactWidget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text("Chat"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: contactList.length,
        itemBuilder: (ctx, i) {
          String heroTag = "contact_$i";
          return ContactWidget(
            contact: contactList[i],
            heroTag: heroTag,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ChatScreen(contactList[i], heroTag),
              ),
            ),
          );
        },
      ),
    );
  }
}
