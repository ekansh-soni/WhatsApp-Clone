import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:whatsapp/Model/ChatModel.dart';
import 'package:whatsapp/Screens/IndividualPage.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({Key? key, required this.chatmodel}) : super(key: key);
  final ChatModel chatmodel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => IndividualPage(Chatmodel: chatmodel,)));
      },
      child: Column(
        children: [
          ListTile(
              leading: CircleAvatar(
                radius: 20,
                child: SvgPicture.asset(
                  chatmodel.isGroup! ? 'assets/groups.svg' : 'assets/person.svg',
                  color: Colors.white,
                ),
                backgroundColor: Colors.blueGrey,
              ),
              title: Text(
                chatmodel.name.toString(),
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              trailing: Text(chatmodel.time.toString()),
              subtitle: Row(
                children: [
                  Icon(Icons.done_all),
                  SizedBox(
                    width: 3,
                  ),
                  Text(chatmodel.currentMessage.toString()),
                ],
              )),
          Padding(
            padding: const EdgeInsets.only(left: 80, right: 20),
            child: Divider(
              thickness: 1,
            ),
          )
        ],
      ),
    );
  }
}
