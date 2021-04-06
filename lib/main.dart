import 'package:flutter/material.dart';
import 'package:infigon_task/BackPage.dart';
import 'package:infigon_task/Provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyProvider(),
      child: MaterialApp(
        home: BackPage(),
      ),
    );
  }
}

