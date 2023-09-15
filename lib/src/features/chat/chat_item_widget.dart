import 'package:flutter/material.dart';
import 'package:whatsapp_demo/src/core/helper/datetime_helper.dart';

class chat_list_widget extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;
  final DateTime lastchat;
  final int unreadcount;

  const chat_list_widget({
    required this.title,
    required this.subtitle,
    required this.image,
    required this.lastchat,
    required this.unreadcount,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 40,
        backgroundImage: NetworkImage(image),
      ),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: Column(
        children: [
          Text(DateTimeHelper.getFormatteddate(lastchat)),
          Visibility(
            visible: unreadcount > 0,
            child: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(30)),
              child: Center(child: Text('$unreadcount', style: TextStyle(color: Colors.white),)),
            ),
          )
        ],
      ),
    );
  }
}