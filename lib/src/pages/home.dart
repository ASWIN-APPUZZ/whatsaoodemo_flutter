import 'package:flutter/material.dart';
import 'package:whatsapp_demo/src/features/calls/call_widget.dart';
import 'package:whatsapp_demo/src/features/chat/chat_widget.dart';
import 'package:whatsapp_demo/src/features/community/community_widget.dart';
import 'package:whatsapp_demo/src/features/status/status_widget.dart';

class homeWidget extends StatefulWidget {
  const homeWidget({super.key});

  @override
  State<homeWidget> createState() => _homeWidgetState();
}

class _homeWidgetState extends State<homeWidget> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          
          title: const Text("WhatsApp", style: TextStyle(color:Colors.white, fontWeight: FontWeight.bold),),
          actions: [
            Icon(Icons.camera_alt_outlined),
            SizedBox(width: 15,),
            Icon(Icons.search),
            SizedBox(width: 15,),
            Icon(Icons.more_vert),
            SizedBox(width: 8,)
          ],
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.group),
              ),
              Tab(
                text: "Chat",
              ),
              Tab(
                text: "Status",
              ),
              Tab(
                text: "Calls",
              )
            ],
          ),
        ),
        body: SafeArea(
            child: TabBarView(
          children: [
            communityWidget(),
            chatWidget(),
            statusWidget(),
            callWidget()
          ],
        )),
      ),
    );
  }
}
