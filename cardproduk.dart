import 'package:customwidget/componen/ratingwidget.dart';
import 'package:flutter/material.dart';

class CardProduk extends StatelessWidget {
  const CardProduk({
    super.key,
    required this.namaProduk,
    required this.harga,
    this.stok,
    this.warna,
  });
  final String namaProduk;
  final String harga;
  final int? stok;
  final Color? warna;
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Container(
          color: warna?? Colors.deepPurple,
          height: 300,
          width: 200,
          child: Center(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 60, backgroundColor: Colors.white,
                      child: Icon(Icons.motorcycle_sharp, color: Colors.black, size: 70,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('$namaProduk',
                        style: TextStyle(fontWeight: FontWeight.bold,
                          color: warna ?? Colors.white, // warna tulisan
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'HARGA: $harga',
                        style: TextStyle(fontWeight: FontWeight.bold,
                          color: warna ?? Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'STOK: ${stok ?? 0}',
                        style: TextStyle(fontWeight: FontWeight.bold,
                          color: warna ?? Colors.white,
                        ),
                      ),
                    ),
                    RatingWidget()
                  ],
                ),
              )
          ),
        )
    );
  }
}