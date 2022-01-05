import 'package:flutter/material.dart';
import 'models/orang.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var orang = Orang(nama: "dini", umur: 25).obs;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
            child: Obx(
          () => Text(
            "Nama ${orang.value.nama}",
            style: const TextStyle(
              fontSize: 35,
            ),
          ),
        )),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            orang.update((modelKembalian) {
              orang.value.nama = orang.value.nama.toString().toUpperCase();
            });
          },
        ),
      ),
    );
  }
}
