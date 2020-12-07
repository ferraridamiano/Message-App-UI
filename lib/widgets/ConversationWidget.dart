import 'package:flutter/material.dart';
import 'package:message_app/models/message.dart';

import 'MessageWidget.dart';

class ConversationWidget extends StatelessWidget {
  final List<Message> messageList;

  ConversationWidget(this.messageList);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Scrollbar(
        child: ListView.builder(
          padding: const EdgeInsets.all(15),
          itemCount: messageList.length,
          itemBuilder: (ctx, i) {
            DateTime messageTime = messageList[i].time;
            //if this is the first message of the conversation or of the day
            //this will display the day + the message
            if (i == 0 || (i > 0 && !_areSameDay(messageTime, messageList[i - 1].time))) {
              String stringDate;
              if (_areSameDay(DateTime.now(), messageTime)) stringDate = 'Today';
              else if(_areSameDay(DateTime.now().subtract(Duration(days: 1)), messageTime)) stringDate = 'Yesterday';
              else stringDate = '${messageTime.day}/${messageTime.month}/${messageTime.year}';

              return Column(
                children: [
                  NewDayChatWidget(stringDate),
                  MessageWidget(messageList[i]),
                ],
              );
            }
            //otherwise just the message
            return MessageWidget(messageList[i]);
          },
        ),
      ),
    );
  }
}

bool _areSameDay(DateTime date1, DateTime date2) {
  return date1.day == date2.day && date1.month == date2.month && date1.year == date2.year;
}
