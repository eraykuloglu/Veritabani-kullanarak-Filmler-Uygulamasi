import 'package:filmler_app/data/entity/filmler.dart';
import 'package:flutter/material.dart';

class DetaySayfa extends StatefulWidget {
  Filmler film;
  DetaySayfa({required this.film});

  @override
  State<DetaySayfa> createState() => _DetaySayfaState();
}

class _DetaySayfaState extends State<DetaySayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text(widget.film.ad),),
      body:Center(
        child: Column(
          children: [
            Image.asset("resimler/${widget.film.resim}",width: 450,height: 450,),
            Text("${widget.film.fiyat} ₺",style: const TextStyle(fontSize: 45),),
          ],
        ),
      ),
    );
  }
}