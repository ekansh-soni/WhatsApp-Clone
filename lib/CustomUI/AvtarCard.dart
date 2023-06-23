import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:whatsapp/Model/ChatModel.dart';

class AvtarCard extends StatelessWidget {
  const AvtarCard({Key? key, this.contact}) : super(key: key);

  final ChatModel ?contact;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Stack(
            children: [
              CircleAvatar(
                radius: 25,
                child: SvgPicture.asset('assets/person.svg',
                    color: Colors.white, height: 30, width: 30),
                backgroundColor: Colors.blueGrey[300],
              ),
              Positioned(
                  bottom: 0,
                  right: 0,
                  child: CircleAvatar(
                      radius: 10,
                      child: Icon(
                        Icons.clear,
                        size: 13,
                      )))
            ],
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            contact!.name.toString(),
            style: TextStyle(fontSize: 12),
          )
        ],
      ),
    );
  }
}
