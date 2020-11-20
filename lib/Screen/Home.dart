import 'package:aprender_ingles/Screen/Animais.dart';
import 'package:aprender_ingles/Screen/Numeros.dart';
import 'package:aprender_ingles/Screen/Vogais.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
        length: 3,
        vsync: this,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Aprender Inglês"),
        bottom: TabBar(
          indicatorWeight: 4,
          indicatorColor: Colors.white,
          labelStyle: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),
          controller: _tabController,
          tabs: [
            Tab(text: "Animais",),
            Tab(text: "Números",),
            Tab(text: "Vogais",)
          ],
        ),
      ),


      body: TabBarView(
        controller: _tabController,
          children: [
            Animais(),
            Numeros(),
            Vogais()
          ],
      ),
    );
  }
}
