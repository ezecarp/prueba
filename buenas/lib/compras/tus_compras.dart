import 'package:flutter/material.dart';

class TusCompras extends StatefulWidget {
  const TusCompras({super.key});

  @override
  State<TusCompras> createState() => _TusComprasState();
}

class _TusComprasState extends State<TusCompras> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Tus compras'),
        shadowColor: Colors.black,
      ),
    );
  }
}