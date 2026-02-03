import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int cnt = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,

        title: Text(
          'Avicious Counter App',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),

        centerTitle: true,

        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ), // for left side gap

        actions: [
          Icon(
            Icons.search_rounded,
            color: Colors.white,
          ), // for right side gap
        ],
      ),

      body: Center(
        child: Text(
          cnt.toString(),
          style: TextStyle(fontSize: 70),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            cnt++;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
