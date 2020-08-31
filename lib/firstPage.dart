library app1;

import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  static const routeName = '/first';

  @override
  Widget build(BuildContext context) {
    final Map<dynamic, dynamic> args =
        ModalRoute.of(context).settings.arguments ?? {};
    final String title =
        args.containsKey('title') ? args['title'] : "First Page";
    final message = args.containsKey('message')
        ? args['message']
        : "Message from First Page";

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: FirstPageBody(message: message),
    );
  }
}

class FirstPageBody extends StatelessWidget {
  const FirstPageBody({
    Key key,
    @required this.message,
  }) : super(key: key);

  final String message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text("Hello, $message!"),
          RaisedButton(
            child: Text("Back"),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
