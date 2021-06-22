import 'package:flutter/material.dart';

//class detail produk
class DetailProduk extends StatefulWidget {
//untuk menampung parameter tersebut
  DetailProduk(
      {Key key, this.name, this.description, this.price, this.image, this.star})
      : super(key: key);
//Variabel yang digunakan untuk menampung parameter tersebut
  final String name;
  final String description;
  final int price;
  final String image;
  final int star;
  @override
//karena menggunakan statful widget maka diperlukan state detail produk
  _DetailProdukState createState() => _DetailProdukState();
}

//class state detail produk
class _DetailProdukState extends State<DetailProduk> {
//inisiasi variabel star
  final childrenstar = <Widget>[];
  @override
//membuat widget
  Widget build(BuildContext context) {
//membuat star secara dinamis sesuai jumlah star yang dikirimkan dari list produk
    for (var i = 0; i < widget.star; i++) {
//memasukkan icon star ke variabel childrenstar
      childrenstar.add(new Icon(
        Icons.star,
        size: 15,
        color: Colors.redAccent,
      ));
    }
//widget scaffold sebagai isi halaman
    return Scaffold(
//app bar
      appBar: new AppBar(
        backgroundColor: Colors.blueGrey,
//little detail produk yang isinya nama produk dalam widget
        title: new Text("${widget.name}"),
      ),
//body halaman dibungkus wiget container
      body: new Container(
        width: double.infinity,
//detail produk dalam container dibungkus dengan widget Listview supaya bisa do scroll
        child: new ListView(
          //adapun isi didalamnya dibungkus dengan children
          children: <Widget>[
            Column(
              children: <Widget>[new Image.asset("assets/" + widget.image)],
            ),
            Container(
              //decoration
              //decoration
              decoration: new BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [const Color(0xff3164bd), const Color(0xff295cb5)],
                ),
              ),
              padding: EdgeInsets.all(10),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: childrenstar,
                  ),
                  new Container(
                    child: new Text(
                      this.widget.price.toString(),
                      //memberikan style pada text
                      style: new TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontFamily: "TimesNewRoman"),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              color: Colors.lightGreen,
              //maximal width
              width: double.infinity,
              //maximal height
              height: double.maxFinite,
              child: new Text(widget.description),
            )
          ],
        ),
      ),
    );
  }
}
