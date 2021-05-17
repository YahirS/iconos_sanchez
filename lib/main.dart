import 'package:flutter/material.dart';

void main() => runApp(YahirApp());

class YahirApp extends StatefulWidget {
  @override
  _YahirAppState createState() => _YahirAppState();
} // fin de yahirAPP

class _YahirAppState extends State<YahirApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: ThemeData(brightness: Brightness.dark), home: Principal());
  }
} // fin clase_YahirAppState

class Principal extends StatefulWidget {
  @override
  _PrincipalState createState() => _PrincipalState();
} // fin clase principal

class _PrincipalState extends State<Principal> with SingleTickerProviderStateMixin {
  TabController controller;
  void initState() {
    super.initState();
    controller = TabController(
      length: 5,
      vsync: this,
      initialIndex: 0,
    );
  } // de iniciar estado 5 tab

  Widget card(String text) {
    return Card(
      color: Colors.pink,
      child: Container(
        height: 200.0,
        width: 200.0,
        child: Center(child: Text(text)),
      ),
    );
  } // fin de tarjetas

  Tab tab(String text, Icon icon) {
    return Tab(
      icon: icon,
      text: text,
    );
  } //fin de tap

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TabBars YahirApp"),
        centerTitle: true,
        backgroundColor: Theme.of(context).canvasColor,
        elevation: 0.0,
      ),
      body: TabBarView(
        controller: controller,
        children: <Widget>[
          card("Tarjeta no 1 Casa"),
          card("Tarjeta no 2 Musica"),
          card("Tarjeta no 3 Llamada"),
          card("Tarjeta no 4 Camara"),
          card("Tarjeta no 5 Reloj"),
        ],
      ),
      bottomNavigationBar: TabBar(
        controller: controller,
        isScrollable: true,
        tabs: <Widget>[
          tab("Casa", Icon(Icons.home)),
          tab("Musica", Icon(Icons.audiotrack)),
          tab("Llamada", Icon(Icons.add_call)),
          tab("Camara", Icon(Icons.add_a_photo_outlined)),
          tab("Reloj", Icon(Icons.access_alarm_rounded)),
        ],
      ),
    ); //fin de scaffold
  } //fin de widget
} // fin clase _PrincipalState
