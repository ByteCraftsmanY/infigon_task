import 'package:flutter/material.dart';
import 'package:infigon_task/ProfilePage.dart';

class BackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Infigon',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.black87,
        centerTitle: true,
      ),
      drawer: Drawer(),
      body: ProfilePage(),
    );
  }
}
