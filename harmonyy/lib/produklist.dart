import 'package:flutter/material.dart';
import './detailproduk.dart';

class ProdukList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar
      appBar: AppBar(backgroundColor: Colors.deepPurple, title: Text("PRODUK")),
      //body untuk content
      //menampilkan list
      body: ListView(
        shrinkWrap: true,
        //padding
        padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10),
        //anggota dari list berupa widget children
        children: <Widget>[
          //Gesture detector untuk menangani gesture pengguna
          new GestureDetector(
            //listener berupa klik 1x
            onTap: () {
              //navigator.push untuk berpindah halaman
              Navigator.of(context).push(new MaterialPageRoute(
                //pemanggilan class DetailProduk beserta pengirimannya detail produk
                builder: (BuildContext context) => DetailProduk(
                  name: "Bass Ibanez Dark",
                  description: "One of the bass design by Ibanez 'Dark Edition",
                  price: 2500000,
                  image: "bass.jpeg",
                  star: 4,
                ),
              ));
            },
            //memanggil class production
            child: ProductBox(
                //berisa permeter
                name: "Bass Ibanez Dark",
                description: "One of the bass design by Ibanez 'Dark Edition",
                price: 2500000,
                image: "bass.jpeg",
                star: 4),
          ),
          new GestureDetector(
            //listener berupa klik 1x
            onTap: () {
              //navigator.push untuk berpindah halaman
              Navigator.of(context).push(new MaterialPageRoute(
                //pemanggilan class DetailProduk beserta pengirimannya detail produk
                builder: (BuildContext context) => DetailProduk(
                  name: "Drum Workshop Limited Edition",
                  description:
                      "Drum Workshop new lauching with limited edition",
                  price: 85000000,
                  image: "drum.jpeg",
                  star: 5,
                ),
              ));
            },
            //memanggil class production
            child: ProductBox(
                //berisa permeter
                name: "Drum Workshop Limited Edition",
                description: "Drum Workshop new lauching with limited edition",
                price: 85000000,
                image: "drum.jpeg",
                star: 5),
          ),
          new GestureDetector(
            //listener berupa klik 1x
            onTap: () {
              //navigator.push untuk berpindah halaman
              Navigator.of(context).push(new MaterialPageRoute(
                //pemanggilan class DetailProduk beserta pengirimannya detail produk
                builder: (BuildContext context) => DetailProduk(
                  name: "Gitar Electric Ibzanez",
                  description: "Guitar by Ibanez with many variant colours",
                  price: 3500000,
                  image: "gitar.jpeg",
                  star: 4,
                ),
              ));
            },
            //memanggil class production
            child: ProductBox(
                //berisa permeter
                name: "Gitar Electric Ibzanez",
                description: "Guitar by Ibanez with many variant colours",
                price: 3500000,
                image: "gitar.jpeg",
                star: 4),
          ),
          new GestureDetector(
            //listener berupa klik 1x
            onTap: () {
              //navigator.push untuk berpindah halaman
              Navigator.of(context).push(new MaterialPageRoute(
                //pemanggilan class DetailProduk beserta pengirimannya detail produk
                builder: (BuildContext context) => DetailProduk(
                  name: "Yamaha PSR-S970",
                  description:
                      "The latest keyboard from Yamaha version PSR-970",
                  price: 14000000,
                  image: "keyboard.jpeg",
                  star: 4,
                ),
              ));
            },
            //memanggil class production
            child: ProductBox(
                //berisa permeter
                name: "Yamaha PSR-S970",
                description: "The latest keyboard from Yamaha version PSR-970",
                price: 14000000,
                image: "keyboard.jpeg",
                star: 4),
          ),
          new GestureDetector(
            //listener berupa klik 1x
            onTap: () {
              //navigator.push untuk berpindah halaman
              Navigator.of(context).push(new MaterialPageRoute(
                //pemanggilan class DetailProduk beserta pengirimannya detail produk
                builder: (BuildContext context) => DetailProduk(
                  name: "Saxophone",
                  description:
                      "Brass Eb Alto Saxophone Sax Lacquered Gold Woodwind Instrument with Carry Case Gloves Cleaning Cloth Brush Sax Strap Mute Mouthpiece Brush",
                  price: 5500000,
                  image: "saxophone.jpeg",
                  star: 5,
                ),
              ));
            },
            //memanggil class production
            child: ProductBox(
                //berisa permeter
                name: "Saxophone",
                description: "Brass Eb Alto Saxophone",
                price: 5500000,
                image: "saxophone.jpeg",
                star: 5),
          ),
          new GestureDetector(
            //listener berupa klik 1x
            onTap: () {
              //navigator.push untuk berpindah halaman
              Navigator.of(context).push(new MaterialPageRoute(
                //pemanggilan class DetailProduk beserta pengirimannya detail produk
                builder: (BuildContext context) => DetailProduk(
                  name: "Audio Technica ATH-E40",
                  description:
                      "Specially designed housing provides maximum isolation, allowing you to focus on the music",
                  price: 1119000,
                  image: "earmonitor.jpeg",
                  star: 5,
                ),
              ));
            },
            //memanggil class production
            child: ProductBox(
                //berisa permeter
                name: "Audio Technica ATH-E40",
                description:
                    "Audio Technica ATH-E40 Professional In-Ear Monitor Headphones",
                price: 1119000,
                image: "earmonitor.jpeg",
                star: 5),
          ),
        ],
      ),
    );
  }
}

class ProductBox extends StatelessWidget {
//untuk menampung parameter tersebut
  ProductBox(
      {Key key, this.name, this.description, this.price, this.image, this.star})
      : super(key: key);
//Variabel yang digunakan untuk menampung parameter tersebut
  final String name;
  final String description;
  final int price;
  final String image;
  final int star;
  final children = <Widget>[];

  Widget build(BuildContext context) {
//membuat star secara dinamis sesuai jumlah star yang dikirimkan dari list produk
    for (var i = 0; i < star; i++) {
//memasukkan icon star ke variabel childrenstar
      children.add(new Icon(
        Icons.star,
        size: 15,
        color: Colors.redAccent,
      ));
    }
    return Container(
        padding: EdgeInsets.all(10),
        child: Card(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
              Image.asset(
                "assets/" + image,
                width: 90,
              ),
              Expanded(
                  child: Container(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(this.name,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                          Text(this.description),
                          Text(
                            "Price: " + this.price.toString(),
                            style: TextStyle(color: Colors.red),
                          ),
                          Row(
                            children: <Widget>[
                              Row(
                                children: children,
                              )
                            ],
                          )
                        ],
                      )))
            ])));
  }
}
