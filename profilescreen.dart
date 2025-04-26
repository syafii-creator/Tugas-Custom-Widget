import 'package:flutter/material.dart';
import '../componen/cardmotor.dart';

class Profilescreen extends StatefulWidget {
  const Profilescreen({super.key,
  required this.username,
  });
  final String username;
  @override
  State<Profilescreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<Profilescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.white,
          title: Text('PROFILE ${widget.username}', style: TextStyle(color: Colors.black)),
          actions: [
          ],  //  Action
        ),
        body: ListView(
          children: [
            const SizedBox(height: 0,),
            Container(color: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
              child: Center(
                child: Text("History Pembelian Motor",
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
              ),
            ),
            Cardmotor(
              namaMotor: "VIXION R 155",
              jumlahPembelian: 1,
              tanggalPembelian: "23/3/2024",
            ),
            Cardmotor(
              namaMotor: "NMAX 155",
              jumlahPembelian: 1,
              tanggalPembelian: "23/3/2023",
            ),
            Cardmotor(
              namaMotor: "AEROX 155",
              jumlahPembelian: 1,
              tanggalPembelian: "23/3/2022",
            ),
          ],
        )
    );
  }
}

