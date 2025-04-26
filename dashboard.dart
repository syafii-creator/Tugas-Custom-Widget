import 'package:customwidget/profilescreen.dart';
import 'package:flutter/material.dart';
import '../componen/cardproduk.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key,
  required this.username,
  });
  final String username;
  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
        appBar: AppBar(backgroundColor: Colors.white,
          title: const Text("DASHBOARD", style: TextStyle(color: Colors.black)),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Profilescreen(username: widget.username,)),
                );
              },
              child: Text("PROFILE", style: TextStyle(color: Colors.black, fontSize: 20),),
            ),
          ],  //  Action
        ),
        body: ListView(
          children: const[
            CardProduk(
              namaProduk: "VIXION R 155",
              harga: "34,200,000",
              stok: 60,
            ),
            CardProduk(
              namaProduk: "NMAX 155",
              harga: "36,300,000 ",
              stok: 25,
            ),
            CardProduk(
              namaProduk: "AEROX 155",
              harga: "32,115,000",
              stok: 8,
            ),
            CardProduk(
              namaProduk: "MIO M3 125",
              harga: "18,305,000",
              stok: 10,
            ),
            CardProduk(
              namaProduk: "FAZZIO Hybrid Neo",
              harga: "23,705,000",
              stok: 16,
            ),
          ],
        )
    );
  }
}

