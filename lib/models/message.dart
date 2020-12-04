import 'package:flutter/material.dart';

enum TransmissionType {
  SENT,
  RECIVED,
}
enum MessageType {
  TEXT,
  IMAGE,
}

class Message {
  final TransmissionType transmissionType;
  final MessageType messageType;
  final String time;
  final String text;
  final String urlImage;

  const Message({
    @required this.transmissionType,
    @required this.messageType,
    @required this.time,
    this.text,
    this.urlImage,
  });
}
