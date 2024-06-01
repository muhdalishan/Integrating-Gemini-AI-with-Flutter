import 'dart:html';

import 'package:flutter/material.dart';

class QnA extends StatefulWidget {
  const QnA({Key? key}) : super(key: key);

  @override
  State<QnA> createState() => _QnAState();
}

class _QnAState extends State<QnA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QnA'),
      ),
      body: Column(
        children: [
          const Text('QnA'),
          ElevatedButton(
            onPressed: () {
              window.open('https://www.google.com', 'Google');
            },
            child: const Text('Google'),
          ),  
        ],
      ),
    );
  }
}
