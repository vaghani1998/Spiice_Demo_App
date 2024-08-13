import 'dart:convert';


class ChatMessage{
  String messageContent;
  String messageType;
  ChatMessage({required this.messageContent, required this.messageType});
}

Message messageFromJson(String str) => Message.fromJson(json.decode(str));

String messageToJson(Message data) => json.encode(data.toJson());

class Message {
  final String name;
  final String tital;

  Message({
    required this.name,
    required this.tital,
  });

  factory Message.fromJson(Map<String, dynamic> json) => Message(
    name: json["name"],
    tital: json["tital"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "tital": tital,
  };
}

