import 'package:flutter/material.dart';

class NotFoundWidget extends StatefulWidget {
  const NotFoundWidget({Key? key}) : super(key: key);

  @override
  State<NotFoundWidget> createState() => _NotFoundWidgetState();
}

class _NotFoundWidgetState extends State<NotFoundWidget> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Route Not found")),
    );
  }
}
