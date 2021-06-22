import 'package:flutter/material.dart';

//import halaman yang akan diload kemudian beri alias
import './beranda.dart' as beranda;
import './produklist.dart' as listproduk;
import './ui/home.dart' as Home;

//Top Lever;/Root
void main() {
  //harus menggunakan MaterialApp
  runApp(new MaterialApp(
    title: "Harmony Store",
    home: new MyApp(),
  ));
}

//jangan lupa menggunakan Statefulwidget
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

//jangan lupa panggil juga SingleTickerProviderStateMixin
class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  //ini variabel controller untuk mengatur tabbar
  TabController _controller;
  //jangan lupa tambahkan iniState untuk inisialisasi dan mengaktifkan tab
  @override
  void initState() {
    _controller = new TabController(vsync: this, length: 3);
    super.initState();
  }

  //jangan lupa tambahkan dipose untuk berpindah halaman
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //gunakan widget Scaffold
    return Scaffold(
        //widget TabBarView
        body: new TabBarView(
            //terdapat controller untuk mengatur halaman
            controller: _controller,
            children: <Widget>[
              //pemanggilan halaman dimulai dari alias.className halaman yang diload
              new beranda.Beranda(),
              new listproduk.ProdukList(),
              new Home.Home(),
            ]),
        //membuat bottom tab
        bottomNavigationBar: new Material(
            color: Colors.green,
            child: new TabBar(
              controller: _controller,
              tabs: <Widget>[
                //menggunakan icon untuk mempercantik nama tab
                //icon berurutan sesuai pemanggilan halaman
                new Tab(icon: new Icon(Icons.home)),
                new Tab(icon: new Icon(Icons.list)),
                new Tab(icon: new Icon(Icons.add_chart))
              ],
            )));
  }
}
