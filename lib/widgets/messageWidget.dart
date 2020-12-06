import 'package:flutter/material.dart';
import '../models/message.dart';
import '../styles.dart';

class MessageWidget extends StatelessWidget {
  final Message _message;
  const MessageWidget(this._message);

  @override
  Widget build(BuildContext context) {
    if (_message.transmissionType == TransmissionType.SENT) return _SentMessageWidget(_message);
    return _ReceivedMessagesWidget(_message);
  }
}

class _ReceivedMessagesWidget extends StatelessWidget {
  final Message _message;
  const _ReceivedMessagesWidget(this._message);

  @override
  Widget build(BuildContext context) {
    String stringDate = _message.time.minute < 10 ? '${_message.time.hour}:0${_message.time.minute}' : '${_message.time.hour}:${_message.time.minute}';
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * .6),
            padding: const EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              color: recivedMessageColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(25),
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
            ),
            child: Text(
              _message.text,
              style: messageTextRecivedStyle,
            ),
          ),
          Text(stringDate, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey)),
        ],
      ),
    );
  }
}

class _SentMessageWidget extends StatelessWidget {
  final Message _message;
  const _SentMessageWidget(this._message);

  @override
  Widget build(BuildContext context) {
    String stringDate = _message.time.minute < 10 ? '${_message.time.hour}:0${_message.time.minute}' : '${_message.time.hour}:${_message.time.minute}';
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(stringDate, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey)),
          SizedBox(width: 5),
          Container(
            constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * .6),
            padding: const EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              color: sentMessageColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
                bottomLeft: Radius.circular(25),
              ),
            ),
            child: Text(
              _message.text,
              style: messageTextSentStyle,
            ),
          ),
        ],
      ),
    );
  }
}

class NewDayChatWidget extends StatelessWidget {
  final String stringDate;

  NewDayChatWidget(this.stringDate);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.all(Radius.circular(6)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 5.0),
        child: Text(
          stringDate,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
