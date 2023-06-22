import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int days =30;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Catalog app"),
      ),
      drawer: Drawer(),


      body: Center(
        child: Container(
          child: Text("Welcome to day $days of flutter"),
        ),
      ),
    );
  }
}
