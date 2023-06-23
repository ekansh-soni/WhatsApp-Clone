import 'package:flutter/material.dart';
import 'package:whatsapp/CustomUI/ButtonCard.dart';
import 'package:whatsapp/CustomUI/ContactCard.dart';
import 'package:whatsapp/Model/ChatModel.dart';
import 'package:whatsapp/Screens/CreateGroup.dart';

class SelectContact extends StatefulWidget {
  const SelectContact({Key? key}) : super(key: key);

  @override
  State<SelectContact> createState() => _SelectContactState();
}

class _SelectContactState extends State<SelectContact> {
  @override
  Widget build(BuildContext context) {
    List<ChatModel> contacts = [
      ChatModel(name: "Vaishali Chandna", status: "Front-End developer"),
      ChatModel(name: "Goutam Pareek", status: "Front-End Designer"),
      ChatModel(name: "Swati Singh", status: "HR"),
      ChatModel(name: "Vaibhav Sharma", status: "Full Stack Developer"),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Select Contact",
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
            ),
            Text(
              "265 Contacts",
              style: TextStyle(
                fontSize: 14,
              ),
            )
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          PopupMenuButton<String>(onSelected: (value) {
            print(value);
          }, itemBuilder: (BuildContext context) {
            return [
              PopupMenuItem(
                child: Text("Invite a friend"),
                value: "Invite a friend",
              ),
              PopupMenuItem(
                child: Text("Contacts"),
                value: "Contacts",
              ),
              PopupMenuItem(
                child: Text("Refresh"),
                value: "Refresh",
              ),
              PopupMenuItem(
                child: Text("Help"),
                value: "Help",
              ),
            ];
          })
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          if (index == 0) {
            return InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (builder)=>CreateGroup()));
              },
              child: ButtonCard(
                icon: Icons.group,
                name: "New group",
                
                
              ),
            );
          } else if (index == 1) {
            return ButtonCard(
              icon: Icons.person_add,
              name: "New contact",
            );
          }
          return ContactCard(contact: contacts[index -2]);
        },
        itemCount: contacts.length+2,
      ),
    );
  }
}
