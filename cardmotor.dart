import 'package:flutter/material.dart';

class Cardmotor extends StatelessWidget {
  const Cardmotor({
    super.key,
    required this.namaMotor,
    required this.jumlahPembelian,
    required this.tanggalPembelian
  });
  final String namaMotor;
  final int jumlahPembelian;
  final String tanggalPembelian;
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Container(color: Colors.deepPurple,
          height: 320,
          width: 200,
          child: Center(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: CircleAvatar(
                        radius: 60, backgroundColor: Colors.white,
                        child: Icon(Icons.motorcycle_sharp,size: 70, color: Colors.black,//Nambah Ikon
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('$namaMotor',
                        style: TextStyle(color: Colors.white, fontSize: 25
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:
                          Text("Tanggal Beli: $tanggalPembelian", style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                    )
                  ],
                ),
              )
          ),
        )
    );
  }
}