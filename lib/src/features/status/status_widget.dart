import 'package:flutter/material.dart';

class statusWidget extends StatefulWidget {
  const statusWidget({super.key});

  @override
  State<statusWidget> createState() => _statusWidgetState();
}

class _statusWidgetState extends State<statusWidget> {
  @override
  Widget build(BuildContext context) {
    return Text("Status");
  }
}