import 'package:flutter/material.dart';
import 'package:message_app/widgets/conversationWidget.dart';
import 'messageLists.dart';
import 'models/contact.dart';

class ChatScreen extends StatefulWidget {
  final Contact contact;
  final String heroTag;

  ChatScreen(this.contact, this.heroTag);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Hero(
              tag: widget.heroTag,
              child: CircleAvatar(backgroundImage: NetworkImage(widget.contact.imageUrl)),
            ),
            SizedBox(width: 5),
            Text(
              widget.contact.name,
              overflow: TextOverflow.clip,
            )
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.phone),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          ConversationWidget(messages),
          //textfield to type the message
          Container(
            margin: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
            height: 61,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).brightness == Brightness.light ? Colors.white : Theme.of(context).backgroundColor,
                      borderRadius: BorderRadius.circular(35.0),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 3),
                          blurRadius: 5,
                          color: Theme.of(context).brightness == Brightness.light ? Colors.grey : Colors.transparent,
                        ),
                      ],
                    ),
                    child: Row(
                      children: <Widget>[
                        SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          child: TextField(
                            maxLines: null,
                            keyboardType: TextInputType.multiline,
                            decoration: InputDecoration(hintText: "Type Something...", border: InputBorder.none),
                          ),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.attach_file,
                            color: Colors.grey,
                          ),
                          onPressed: () {},
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 15),
                Container(
                  decoration: BoxDecoration(color: Colors.green, shape: BoxShape.circle),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: IconButton(
                        icon: Icon(
                          Icons.send,
                          color: Colors.white,
                        ),
                        onPressed: null),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
