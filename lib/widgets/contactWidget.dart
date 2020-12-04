import 'package:flutter/material.dart';
import 'package:message_app/models/contact.dart';

class ContactWidget extends StatelessWidget {
  final Contact contact;
  final Function onTap;
  final String heroTag;

  const ContactWidget({@required this.contact, @required this.onTap, @required this.heroTag});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: ListTile(
            onTap: () => onTap(),
            leading: Hero(
              tag: heroTag,
              child: Container(
                width: 50,
                height: 50,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(contact.imageUrl),
                ),
              ),
            ),
            title: Text(
              contact.name,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            trailing: contact.hasUnseenMessages
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.center,
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ],
                  )
                : SizedBox(),
          ),
        ),
        Divider(
          height: 1.0,
          thickness: 1.0,
        ),
      ],
    );
  }
}
