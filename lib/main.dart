import 'package:flutter/material.dart';

void main() => runApp(Mifeed());

class Mifeed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'feed',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: new PaginaPrincipal(title: 'feed de susi'),
    ); //fin de material
  } //fin de widget
} //fin del feed

class PaginaPrincipal extends StatefulWidget {
  final String title;
  @override
  PaginaPrincipal({this.title}) : super();
  @override
  State<StatefulWidget> createState() {
    return new PaginaPrincipalState();
  } //
} //fin de pagina principal con estado

class PaginaPrincipalState extends State<PaginaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
        centerTitle: true,
      ),
      body: new GridView.extent(
        maxCrossAxisExtent: 150.0,
        mainAxisSpacing: 5.0,
        crossAxisSpacing: 5.0,
        padding: const EdgeInsets.all(5.0),
        children: _buildGridTiles(26),
      ), //GridView
    ); //Scaffold
  } //Constructor
} //Clase InicioState

List<Widget> _buildGridTiles(numberOfTiles) {
  List<Container> containers = new List<Container>.generate(numberOfTiles, (int index) {
    //index = 0, 1, 2,...
    final imageName = index < 9 ? 'https://raw.githubusercontent.com/susancerc/chalex2/main//image0${index + 1}.jpg' : 'https://raw.githubusercontent.com/susancerc/chalex2/main/image${index + 1}.jpg';
    // 'images/image0${index + 1}.JPG' : 'images/image${index + 1}.JPG';
    return new Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        color: Colors.brown,
        image: DecorationImage(
          image: NetworkImage(imageName),
          fit: BoxFit.cover,
        ),
      ),
    );
  }); //Contenedor generador de nombres
  return containers;
} //Fin de List
