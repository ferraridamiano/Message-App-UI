import 'models/contact.dart';
import 'models/message.dart';

List<Contact> contactList = [
  Contact(name: 'Damiano Ferrari', hasUnseenMessages: true, imageUrl: 'https://cdn.pixabay.com/photo/2015/01/08/18/29/entrepreneur-593358_960_720.jpg'),
  Contact(name: 'Full stack Dev', hasUnseenMessages: true, imageUrl: 'https://cdn.pixabay.com/photo/2015/01/08/18/29/entrepreneur-593358_960_720.jpg'),
  Contact(name: 'Dart Dev', hasUnseenMessages: false, imageUrl: 'https://cdn.pixabay.com/photo/2015/01/08/18/29/entrepreneur-593358_960_720.jpg'),
  Contact(name: 'Designer', hasUnseenMessages: false, imageUrl: 'https://cdn.pixabay.com/photo/2015/01/08/18/29/entrepreneur-593358_960_720.jpg'),
  Contact(name: 'FrontEnd Dev', hasUnseenMessages: true, imageUrl: 'https://cdn.pixabay.com/photo/2015/01/08/18/29/entrepreneur-593358_960_720.jpg'),
  Contact(name: 'BackEnd Dev', hasUnseenMessages: false, imageUrl: 'https://cdn.pixabay.com/photo/2015/01/08/18/29/entrepreneur-593358_960_720.jpg'),

];

List<Message> messages = [
  Message(
      transmissionType: TransmissionType.RECIVED,
      messageType: MessageType.TEXT,
      time: DateTime.utc(2020, 1, 1, 20, 43),
      text: 'Hi guy!'),
  Message(
      transmissionType: TransmissionType.SENT,
      messageType: MessageType.TEXT,
      time: DateTime.utc(2020, 1, 2, 10, 02),
      text: 'Hi, how are you today?'),
  Message(
      transmissionType: TransmissionType.SENT,
      messageType: MessageType.TEXT,
      time: DateTime.utc(2020, 1, 2, 10, 03),
      text: '😊'),
  Message(
      transmissionType: TransmissionType.RECIVED,
      messageType: MessageType.TEXT,
      time: DateTime.utc(2020, 1, 2, 10, 50),
      text: 'Nice, I am going to launch my new Flutter App. What about you?'),
  Message(
      transmissionType: TransmissionType.SENT,
      messageType: MessageType.TEXT,
      time: DateTime.utc(2020, 1, 3, 20, 22),
      text: 'Cool! I\'m fine thanks!'),
];
