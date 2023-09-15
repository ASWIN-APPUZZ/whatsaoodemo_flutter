import 'package:flutter/material.dart';
import 'package:whatsapp_demo/src/features/chat/chat_item_widget.dart';

class chatWidget extends StatefulWidget {
  const chatWidget({super.key});

  @override
  State<chatWidget> createState() => _chatWidgetState();
}

class _chatWidgetState extends State<chatWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        chat_list_widget(
            title: "Aswin",
            subtitle: "Hello",
            image: 'https://wallpapercave.com/dwp2x/wp9626720.jpg',
            lastchat: DateTime(2023, 09, 13),
            unreadcount: 5),

            chat_list_widget(
            title: "Amal",
            subtitle: "Hii",
            image: 'https://wallpapercave.com/dwp2x/wp9626720.jpg',
            lastchat: DateTime(2023, 09, 10),
            unreadcount: 5),

            chat_list_widget(
            title: "Aswin",
            subtitle: "How Are You",
            image: 'https://wallpapercave.com/dwp2x/wp9626720.jpg',
            lastchat: DateTime(2023, 09, 14),
            unreadcount: 5)
      ],
    );
  }
}
