import 'package:flutter/material.dart';
import 'package:whatsapp/Model/ChatModel.dart';
import 'package:whatsapp/Screens/SelectContact.dart';
import '../CustomUI/CustomCard.dart';
// import '../Model/ChatModel.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatModel> chats = [
    ChatModel(
        name: 'Gullu',
        icon: 'person.svg',
        time: '3:35',
        isGroup: false,
        currentMessage: "Hello "),
    ChatModel(
        name: 'Goutam',
        icon: 'person.svg',
        time: '2:35',
        isGroup: false,
        currentMessage: "Hello Brother"),
    ChatModel(
        name: 'Swati',
        icon: 'person.svg',
        time: '8:35',
        isGroup: false,
        currentMessage: "Hello "),
    ChatModel(
        name: 'Anita Soni',
        icon: 'person.svg',
        time: '10:20',
        isGroup: false,
        currentMessage: 'Hello beta'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (builder) => SelectContact()));
        },
        child: Icon(Icons.chat),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => CustomCard(
          chatmodel: chats[index],
        ),
        itemCount: chats.length,
      ),
    );
  }
}
