import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:whatsapp/Model/ChatModel.dart';

class ContactCard extends StatelessWidget {
  const ContactCard({Key? key, required this.contact}) : super(key: key);
  final ChatModel contact;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 53,
        width: 50,
        child: Stack(
          children: [
            CircleAvatar(
              radius: 23,
              child: SvgPicture.asset(
                'assets/person.svg',
                color: Colors.white,
                height: 30,
                width: 30,
              ),
              backgroundColor: Colors.blueGrey[300],
            ),
            contact.select? Positioned(
              bottom: 3,
              right: 1,
              child: CircleAvatar(
                backgroundColor: Colors.teal,
                radius: 10,
                child: Icon(Icons.check,
                color: Colors.white,
                size: 18,)
                
                ),
            ): Container()
          ],
        ),
      ),
      title: Text(
        contact.name.toString(),
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        contact.status.toString(),
        style: TextStyle(fontSize: 13),
      ),
    );
  }
}
