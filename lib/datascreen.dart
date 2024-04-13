import 'package:flutter/material.dart';

class DataScreen extends StatelessWidget {

  final String name;
  final String address;
  final String nin;
  const DataScreen({super.key, required this.name, required this.address, required this.nin});

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;
    return Scaffold(
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,

          children: [
                Text(name, style: TextStyle(color: primaryColor),),
                Text(address),
                Text(nin),
          ],
        ),
      ),
    );
  }
}
