import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:lojavirtual2/datas/product_data.dart';
import 'package:carousel_pro/carousel_pro.dart';



class ProducScreen extends StatefulWidget {

  final ProductData product;
  ProducScreen(this.product);

  @override
  _ProducScreenState createState() => _ProducScreenState(product);
}

class _ProducScreenState extends State<ProducScreen> {

  final ProductData product;
  _ProducScreenState(this.product);

  @override
  Widget build(BuildContext context) {
    final primaryColor =  Theme.of(context).primaryColor;
    return Scaffold(
      appBar: AppBar(
        title: Text(product.title, style: TextStyle(fontSize: 16.0),),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          AspectRatio(
          aspectRatio: 0.9,
          child: Carousel(
            images: product.images.map((url){
              return NetworkImage(url);
            }).toList(),
            dotSize: 4.0,
            dotSpacing: 15.0,
            dotBgColor: Colors.transparent,
            dotColor: primaryColor,
            autoplay: false,
          ),)
        ],
      ),
    );
  }
}

